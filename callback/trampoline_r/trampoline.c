/* Trampoline construction */

/*
 * Copyright 1995-2024 Bruno Haible <bruno@clisp.org>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */


#include "config.h"
#include "trampoline_r.h"

#if defined(__hppa__) && !defined(__hppa64__)
#if 0
#define __hppaold__  /* Old trampoline, real machine code. */
#else
#define __hppanew__  /* New trampoline, just a closure. */
#endif
#endif
#if defined(__hppa64__)
#if 0
#define __hppa64old__  /* Old trampoline, real machine code. */
#else
#define __hppa64new__  /* New trampoline, just a closure. */
#endif
#endif
#if defined(__powerpc__) && !defined(__powerpc64__)
#if !defined(_AIX)
#define __powerpcsysv4__  /* SysV.4 ABI, real machine code. */
#else
#define __powerpcaix__  /* AIX ABI, just a closure. */
#endif
#endif
#if defined(__powerpc64__) && !defined(__powerpc64_elfv2__)
#define __powerpc64aix__  /* AIX ABI, just a closure. */
#endif
#if defined(__hppanew__) || defined(__hppa64new__)
/*
 * A function pointer is a biased pointer to a data area whose first word
 * (hppa) or third word (hppa64) contains the actual address of the function.
 */
extern void tramp_r (); /* trampoline prototype */
/* We don't need to take any special measures to make the code executable
 * since the actual instructions are in the text segment.
 */
#ifndef CODE_EXECUTABLE
#define CODE_EXECUTABLE
#endif
#endif
#if defined(__powerpcaix__) || defined(__powerpc64aix__) || defined(__ia64__)
/*
 * A function pointer is a pointer to a data area whose first word contains
 * the actual address of the function.
 */
extern void (*tramp_r) (); /* trampoline prototype */
/* We don't need to take any special measures to make the code executable
 * since the actual instructions are in the text segment.
 */
#ifndef CODE_EXECUTABLE
#define CODE_EXECUTABLE
#endif
#endif

#ifndef CODE_EXECUTABLE                 /* Linux, Hurd, macOS, *BSD, IRIX, Solaris, Cygwin, native Windows */
  /* How do we make the trampoline's code executable? */
  #if HAVE_WORKING_MPROTECT             /* Linux, Hurd, macOS, *BSD, IRIX, Solaris, Cygwin */
    #if HAVE_MPROTECT_AFTER_MALLOC_CAN_EXEC > 0    /* Hurd, macOS, *BSD except HardenedBSD, IRIX, Solaris, Cygwin */
      /* mprotect() [or equivalent] the malloc'ed area. */
      #define EXECUTABLE_VIA_MALLOC_THEN_MPROTECT
    #elif HAVE_MPROTECT_AFTER_MMAP_CAN_EXEC > 0
      /* mprotect() [or equivalent] the mmap'ed area. */
      #define EXECUTABLE_VIA_MMAP_THEN_MPROTECT
    #elif HAVE_MMAP_SHARED_MACOS_CAN_EXEC          /* macOS >= 10.4 */
      #define EXECUTABLE_VIA_MMAP_SHARED_MACOS
    #elif HAVE_MMAP_SHARED_NETBSD_CAN_EXEC         /* NetBSD >= 8.0 */
      #define EXECUTABLE_VIA_MMAP_SHARED_NETBSD
    #elif HAVE_MMAP_SHARED_MEMFD_CAN_EXEC          /* Linux >= 3.17, FreeBSD >= 13.0 */
      #define EXECUTABLE_VIA_MMAP_SHARED_MEMFD
    #elif defined __ANDROID__ && HAVE_MPROTECT_AFTER_MMAP_CAN_EXEC < 0 /* Linux */
      /* On Android, SELinux is controlling what is allowed, see
         <https://source.android.com/docs/security/features/selinux>.
         Using memfd_create() might violate the Android API level.
         Using malloc()/mmap() then mprotect PROT_WRITE|PROT_EXEC might be
         blocked by SELinux.
         Using a temporary file with separate memory mappings would depend
         on finding an appropriate writable directory.
         It's a dilemma. Let's hope that mmap() then mprotect works.  */
      #define EXECUTABLE_VIA_MMAP_THEN_MPROTECT
    #elif HAVE_MMAP_SHARED_POSIX_CAN_EXEC          /* Linux, HardenedBSD */
      #define EXECUTABLE_VIA_MMAP_SHARED_POSIX
    #else
      #error "Don't know how to make memory pages executable."
    #endif
  #else                                            /* native Windows, very old Linux */
    #if HAVE_MMAP_ANONYMOUS                        /* very old Linux */
      /* Use an mmap'ed page. */
      #define EXECUTABLE_VIA_MMAP
    #else
      #if defined(_WIN32) && ! defined(__CYGWIN__) /* native Windows */
        #define EXECUTABLE_VIA_VIRTUALALLOC
      #else
        ??
      #endif
    #endif
  #endif
#endif

#include <stdio.h> /* declares fprintf() */

#include <sys/types.h>
#include <stdlib.h> /* declares abort(), malloc(), free() */
#ifdef HAVE_UNISTD_H
#include <unistd.h> /* declares getpagesize() */
#endif

/* Define intptr_t, uintptr_t. */
#include <stdint.h>

/* Declare getpagesize(). */
/* On HP-UX, getpagesize exists, but it is not declared in <unistd.h> even if
   the compiler options -D_HPUX_SOURCE -D_XOPEN_SOURCE=600 are used.  */
#ifdef __hpux
extern
#ifdef __cplusplus
       "C"
#endif
       int getpagesize (void);
#endif

/* Declare mprotect(). */
#if defined(EXECUTABLE_VIA_MALLOC_THEN_MPROTECT) || defined(EXECUTABLE_VIA_MMAP_THEN_MPROTECT) || defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD)
#include <sys/types.h>
#include <sys/mman.h>
#endif

/* Declare mmap() and, if present, mremap() or memfd_create(). */
#if defined(EXECUTABLE_VIA_MMAP) || defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD) || defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
#include <sys/types.h>
#include <sys/mman.h>
#endif

/* Declare mach_vm_remap.  */
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS)
#include <mach/mach.h>
/* Declaring it ourselves is easier than including <mach/mach_vm.h>.  */
extern
#ifdef __cplusplus
"C"
#endif
kern_return_t mach_vm_remap (vm_map_t target_task,
                             mach_vm_address_t *target_address, /* in/out */
                             mach_vm_size_t size,
                             mach_vm_offset_t mask,
                             int flags,
                             vm_map_t src_task,
                             mach_vm_address_t src_address,
                             boolean_t copy,
                             vm_prot_t *cur_protection, /* out */
                             vm_prot_t *max_protection, /* out */
                             vm_inherit_t inheritance);
#endif

#if !defined(CODE_EXECUTABLE) && defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
/* Declare open(). */
# include <sys/types.h>
# include <unistd.h>
# include <fcntl.h>
/* For finding an appropriate location for the temporary file. */
# if defined(__linux__) || (defined(__ANDROID__) && HAVE_SETMNTENT)
#  include <sys/statfs.h>
#  include <sys/statvfs.h>
#  include <mntent.h>
# endif
# if defined(__OpenBSD__)
#  include <sys/types.h>
#  include <sys/mount.h>
# endif
# include <string.h>
#endif

/* Declare VirtualAlloc(), GetSystemInfo. */
#ifdef EXECUTABLE_VIA_VIRTUALALLOC
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#endif

/* Some old mmap() implementations require the flag MAP_VARIABLE whenever you
   pass an addr == NULL. */
#ifndef MAP_VARIABLE
#define MAP_VARIABLE 0
#endif

/* Support for instruction cache flush. */
#if defined _WIN32 && !defined __CYGWIN__
# define WIN32_LEAN_AND_MEAN
# define WIN32_EXTRA_LEAN
# include <windows.h>
#elif defined __APPLE__ && defined __MACH__
# include <libkern/OSCacheControl.h>
#elif defined _AIX
# include <sys/cache.h>
#elif defined __sgi
# include <sys/cachectl.h>
#else
#ifdef __i386__
#if defined(_WIN32) && ! defined(__CYGWIN__) /* native Windows */
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#endif
#endif
#if defined(__mips__) || defined(__mipsn32__) || defined(__mips64__) || defined(__riscv32__) || defined(__riscv64__)
#ifdef HAVE_SYS_CACHECTL_H /* IRIX, Linux */
#include <sys/cachectl.h>
#if defined(__riscv64__) && !defined(__GLIBC__)
/* musl libc lacks a declaration of this function. */
extern int __riscv_flush_icache (void *start, void *end, unsigned long flags);
#endif
#else
#ifdef __OpenBSD__
#include <machine/sysarch.h>
#endif
#endif
#endif
/* Inline assembly function for instruction cache flush. */
#if defined(__sparc__) || defined(__sparc64__)
extern void __TR_clear_cache_2 (char* first_addr, char* last_addr);
#endif
#if defined(__alpha__)
extern void __TR_clear_cache (void);
#endif
#if defined(__hppaold__) || defined(__hppa64old__)
extern void __TR_clear_cache (char* first_addr, char* last_addr);
#endif
#if defined(__powerpcsysv4__) || defined(__powerpc64_elfv2__)
extern void __TR_clear_cache_2 (char* first_addr);
#endif
#endif

/* Support for multithread-safe coding. */
#include "glthread/lock.h"

#if defined(__APPLE__) && defined(__MACH__) /* only needed on macOS */
#define KEEP_TEMP_FILE_VISIBLE
/* Support for temporary files that are cleaned up automatically. */
#include "clean-temp-simple.h"
#endif

/* Support for testing the protection of a memory range.  */
#include "vma-prot.h"

#if !defined(CODE_EXECUTABLE) && defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)

/* Opens a file descriptor and attempts to make it non-inheritable. */
static int open_noinherit (const char *filename, int flags, int mode)
{
# if O_CLOEXEC
  return open (filename, flags | O_CLOEXEC, mode);
# else
  int fd = open (filename, flags, mode);
#  ifdef F_SETFD
  if (fd >= 0)
    {
      int flags = fcntl (fd, F_GETFD, 0);
      if (flags >= 0)
        fcntl (fd, F_SETFD, flags | FD_CLOEXEC);
    }
#  endif
  return fd;
# endif
}

/* Finding an appropriate location for the temporary file. */
# if defined(__linux__) || (defined(__ANDROID__) && HAVE_SETMNTENT)
static int is_usable_mount(const struct statfs *fsp, const char *dir)
{
  unsigned int fs_type = fsp->f_type;
  if (fs_type == 0xef53                                 /* ext2, ext3, ext4 */
      || fs_type == 0x58465342                          /* xfs */
      || fs_type == 0x3153464a                          /* IBM jfs */
      || fs_type == 0x9123683e                          /* btrfs */
      || fs_type == 0x4d44                              /* vfat */
      || fs_type == 0x2011bab0                          /* exfat */
      || fs_type == 0x00011954 || fs_type == 0x19540119 /* BSD ufs */
      || fs_type == 0x858458f6                          /* ramfs */
      || fs_type == 0x01021994                          /* tmpfs */)
    /* A local, possibly writable file system. */
    /* Older Linux (glibc < 2.13) has no f_flags in 'struct statfs'.  */
#  if !(__GLIBC__ == 2 && __GLIBC_MINOR__ < 13)
    if ((fsp->f_flags & (ST_RDONLY | ST_NOEXEC)) == 0)
#  endif
      /* It is writable and does not use the "noexec" mount option. */
      if (access (dir, R_OK | W_OK | X_OK) == 0)
        /* This directory should work.  */
        return 1;
  return 0;
}
static int is_usable_mntent(const struct mntent *me, const char *dir)
{
  const char *me_type = me->mnt_type;
  if (strcmp (me_type, "ext2") == 0     /* ext2 */
      || strcmp (me_type, "ext3") == 0  /* ext3 */
      || strcmp (me_type, "ext4") == 0  /* ext4 */
      || strcmp (me_type, "xfs") == 0   /* xfs */
      || strcmp (me_type, "jfs") == 0   /* IBM jfs */
      || strcmp (me_type, "btrfs") == 0 /* btrfs */
      || strcmp (me_type, "vfat") == 0  /* vfat */
      || strcmp (me_type, "exfat") == 0 /* exfat */
      || strcmp (me_type, "ufs") == 0   /* BSD ufs */
      || strcmp (me_type, "ramfs") == 0 /* ramfs */
      || strcmp (me_type, "tmpfs") == 0 /* tmpfs */)       //?
    /* A local, possibly writable file system. */
    if (!hasmntopt (me, "ro") && !hasmntopt (me, "noexec"))
      /* It is writable and does not use the "noexec" mount option. */
      if (access (dir, R_OK | W_OK | X_OK) == 0)
        /* This directory should work.  */
        return 1;
  return 0;
}
# endif
# if defined(__OpenBSD__)
static int is_usable_mount(const struct statfs *fsp, const char *dir)
{
  const char *fs_type = fsp->f_fstypename;
  /* For the full list of file systems, look at /usr/share/man/man8/mount_*. */
  if (strcmp (fs_type, "ffs") == 0
      || strcmp (fs_type, "tmpfs") == 0
      || strcmp (fs_type, "ext2fs") == 0
      || strcmp (fs_type, "ntfs") == 0
      || strcmp (fs_type, "msdos") == 0)
    /* This should imply (fsp->f_flags & MNT_LOCAL) != 0. */
    /* A local, possibly writable file system. */
    if ((fsp->f_flags & (MNT_RDONLY | MNT_NOEXEC)) == 0)
      /* It is writable and does not use the "noexec" mount option. */
      if (access (dir, R_OK | W_OK | X_OK) == 0)
        /* This directory should work.  */
        return 1;
  return 0;
}
# endif

# if defined(__linux__) || (defined(__ANDROID__) && HAVE_SETMNTENT) || defined(__OpenBSD__)
/* Return the name of some directory, hopefully
    - with rwx permissions for the current user,
    - on a local (not network-backed) file system,
    - without mount options that prevent PROT_EXEC mappings. */
static const char * local_rwx_tmp_dir (void)
{
  {
    /* Try /tmp first.  */
    const char *dir = "/tmp";
    struct statfs fs;
    if (statfs (dir, &fs) == 0 && is_usable_mount (&fs, dir))
      /* This directory should work.  */
      return dir;
  }
#  if defined(__linux__) || (defined(__ANDROID__) && HAVE_SETMNTENT)
  {
    FILE *fp = setmntent (MOUNTED, "r");
    if (fp != NULL)
      {
        struct mntent mntent_buf;
        char buf[1000];
        struct mntent *me;
        while ((me = getmntent_r (fp, &mntent_buf, buf, sizeof (buf))) != NULL)
          {
            const char *dir = me->mnt_dir;
            if (is_usable_mntent (me, dir))
              {
                /* This directory should work. */
                dir = strdup (dir);
                if (dir != NULL)
                  {
                    endmntent (fp);
                    return dir;
                  }
              }
          }
        endmntent (fp);
      }
  }
#  endif
#  if defined(__OpenBSD__)
  {
    struct statfs *fsp;
    int entries = getmntinfo (&fsp, MNT_NOWAIT);
    if (entries >= 0)
      for (; entries-- > 0; fsp++)
        {
          const char *dir = fsp->f_mntonname;
          if (is_usable_mount (fsp, dir))
            {
              /* This directory should work. */
              dir = strdup (dir);
              if (dir != NULL)
                  return dir;
            }
        }
  }
#  endif
  {
    /* Try $TMPDIR last.  */
    const char *dir = getenv("TMPDIR");
    if (dir != NULL && dir[0] == '/')
      {
        struct statfs fs;
        if (statfs (dir, &fs) == 0 && is_usable_mount (&fs, dir))
          /* This directory should work.  */
          return dir;
      }
  }
  /* This will probably not work... */
  return "/tmp";
}
# endif

#endif

/* Length and alignment of trampoline */
#ifdef __i386__
#define TRAMP_LENGTH 12
#define TRAMP_ALIGN 16  /* 4 for a i386, 16 for a i486 */
#endif
#ifdef __m68k__
#define TRAMP_LENGTH 14
#define TRAMP_ALIGN 16
#endif
#if (defined(__mips__) || defined(__mipsn32__)) && !defined(__mips64__)
#define TRAMP_LENGTH 24
#define TRAMP_ALIGN 4
#endif
#ifdef __mips64old__
#define TRAMP_LENGTH 56
#define TRAMP_ALIGN 4
#endif
#ifdef __mips64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#if defined(__sparc__) && !defined(__sparc64__)
#define TRAMP_LENGTH 16
#define TRAMP_ALIGN 16
#endif
#ifdef __sparc64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 16
#endif
#ifdef __alpha__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#ifdef __hppaold__
#define TRAMP_LENGTH 48
#define TRAMP_ALIGN 16
#endif
#ifdef __hppanew__
#define TRAMP_LENGTH 16
#define TRAMP_ALIGN 16
#define TRAMP_BIAS 2
#endif
#ifdef __hppa64old__
#define TRAMP_LENGTH 80
#define TRAMP_ALIGN 8
#define TRAMP_BIAS 48
#endif
#ifdef __hppa64new__
#define TRAMP_LENGTH 48
#define TRAMP_ALIGN 8
#endif
#if defined(__arm__) || defined(__armhf__)
#define TRAMP_LENGTH 48
#define TRAMP_ALIGN 4
#endif
#ifdef __arm64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#ifdef __powerpcsysv4__
#define TRAMP_LENGTH 24
#define TRAMP_ALIGN 4
#endif
#ifdef __powerpcaix__
#define TRAMP_LENGTH 20
#define TRAMP_ALIGN 4
#endif
#ifdef __powerpc64_elfv2__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#ifdef __powerpc64aix__
#define TRAMP_LENGTH 40
#define TRAMP_ALIGN 8
#endif
#ifdef __ia64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 16
#endif
#ifdef __x86_64__
#ifdef __x86_64_x32__
#define TRAMP_LENGTH 13
#define TRAMP_ALIGN 4
#else
#define TRAMP_LENGTH 22
#define TRAMP_ALIGN 16
#endif
#endif
#if defined(__s390__) && !defined(__s390x__)
#define TRAMP_LENGTH 20
#define TRAMP_ALIGN 4
#endif
#ifdef __s390x__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#ifdef __riscv32__
#define TRAMP_LENGTH 24
#define TRAMP_ALIGN 4
#endif
#ifdef __riscv64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif
#ifdef __loongarch64__
#define TRAMP_LENGTH 32
#define TRAMP_ALIGN 8
#endif

#ifndef TRAMP_BIAS
#define TRAMP_BIAS 0
#endif

#define TRAMP_TOTAL_LENGTH (TRAMP_LENGTH + 2*sizeof(void*))

#if !defined(CODE_EXECUTABLE)
static long pagesize = 0;
#endif

#if !defined(CODE_EXECUTABLE) && (defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX))

/* Variables needed for obtaining memory pages via mmap(). */
static int file_fd;
static long file_length;

/* Initialization of these variables. */
static void for_mmap_init (void)
{
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD)
  {
    char filename[100];
    sprintf(filename, "trampdata-%d-%ld", getpid (), random ());
    file_fd = memfd_create (filename, MFD_CLOEXEC);
    if (file_fd < 0)
      {
        fprintf(stderr,"trampoline: Cannot allocate RAM at %s!\n",filename);
        abort();
      }
  }
#endif
#if defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
  {
# if defined(__linux__) || (defined(__ANDROID__) && HAVE_SETMNTENT) || defined(__OpenBSD__)
    const char *tmpdir = local_rwx_tmp_dir();
# else
    const char *tmpdir = "/tmp";
# endif
    int pid = getpid ();
    long int r = random ();
    /* The sprintf below may produce up to 11 bytes for %d and up to 21 bytes
       for %ld. */
    char *filename = (char *) malloc (strlen(tmpdir)+1+10+11+1+21+1);
    if (filename == NULL)
      { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
    sprintf(filename, "%s/trampdata-%d-%ld", tmpdir, pid, r);
 #if defined(KEEP_TEMP_FILE_VISIBLE)
    if (register_temporary_file(filename) < 0)
      { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
 #endif
    file_fd = open_noinherit (filename, O_CREAT | O_RDWR | O_TRUNC, 0700);
    if (file_fd < 0)
      {
 #if defined(KEEP_TEMP_FILE_VISIBLE)
        unregister_temporary_file(filename);
 #endif
        fprintf(stderr,"trampoline: Cannot open %s!\n",filename);
        abort();
      }
 #if !defined(KEEP_TEMP_FILE_VISIBLE)
    /* Remove the file from the file system as soon as possible, to make
       sure there is no leftover after this process terminates or crashes.
       On macOS 11.2, this does not work: It would make the mmap call below,
       with arguments PROT_READ|PROT_EXEC and MAP_SHARED, fail. */
    unlink(filename);
 #endif
  }
#endif
  file_length = 0;
}

/* Once-only initializer for these variables. */
gl_once_define(static, for_mmap_once)

#endif

#if !defined(CODE_EXECUTABLE) && !defined(EXECUTABLE_VIA_MALLOC_THEN_MPROTECT)
/* AIX doesn't support mprotect() in malloc'ed memory. Must get pages of
 * memory with execute permission via mmap(). Then keep a free list of
 * free trampolines.
 */
static char* freelist = NULL;
/* Lock that protects the freelist from simultaneous access from multiple
   threads. */
gl_lock_define_initialized(static, freelist_lock)
#endif

__TR_function alloc_trampoline_r (__TR_function address, void* data0, void* data1)
{
  char* function;
  char* function_x;
  char* data;

#if !defined(CODE_EXECUTABLE)
  /* First, get the page size once and for all. */
  if (!pagesize)
    {
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
      /* Use a once-only initializer here, since simultaneous execution of
         for_mmap_init() in multiple threads must be avoided. */
      gl_once (for_mmap_once, for_mmap_init);
#endif
      /* Simultaneous execution of this initialization in multiple threads
         is OK. */
#if defined(EXECUTABLE_VIA_VIRTUALALLOC)
      /* GetSystemInfo
         <https://msdn.microsoft.com/en-us/library/ms724381.aspx>
         <https://msdn.microsoft.com/en-us/library/ms724958.aspx> */
      SYSTEM_INFO info;
      GetSystemInfo(&info);
      pagesize = info.dwPageSize;
#else
      pagesize = getpagesize();
#endif
    }
#endif

  /* 1. Allocate room */

#if !defined(CODE_EXECUTABLE) && !defined(EXECUTABLE_VIA_MALLOC_THEN_MPROTECT)
  gl_lock_lock(freelist_lock);
  if (freelist == NULL)
    { /* Get a new page. */
      char* page;
      char* page_end;
#ifdef EXECUTABLE_VIA_VIRTUALALLOC
      /* VirtualAlloc
         <https://msdn.microsoft.com/en-us/library/aa366887.aspx>
         <https://msdn.microsoft.com/en-us/library/aa366786.aspx> */
      page = VirtualAlloc(NULL,pagesize,MEM_COMMIT,PAGE_EXECUTE_READWRITE);
      if (page == NULL)
        { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
      page_end = page + pagesize;
#else
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD) || defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
      char* page_x;
 #if defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS)
      /* Allocate one more page. */
      page = (char*)mmap(NULL,pagesize,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANON,-1,0);
      if (page == (char*)(-1))
        { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
      {
        vm_map_t self = mach_task_self ();
        mach_vm_address_t target_address = 0;
        vm_prot_t cur_prot;
        vm_prot_t max_prot;
        kern_return_t ret = mach_vm_remap (self, &target_address, pagesize, 0, VM_FLAGS_ANYWHERE, self, (mach_vm_address_t) (unsigned long) page, FALSE, &cur_prot, &max_prot, VM_INHERIT_NONE);
        if (ret != KERN_SUCCESS)
          { fprintf(stderr,"trampoline: mach_vm_remap failed!\n"); abort(); }
        page_x = (char *) (unsigned long) target_address;
      }
      if (mprotect(page_x,pagesize,PROT_READ|PROT_EXEC) < 0)
        { fprintf(stderr,"trampoline: mprotect after mach_vm_remap failed!\n"); abort(); }
 #endif
 #if defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD)
      /* Allocate one more page. */
      page = (char*)mmap(NULL,pagesize,PROT_READ|PROT_WRITE|PROT_MPROTECT(PROT_READ|PROT_WRITE|PROT_EXEC),MAP_PRIVATE|MAP_ANON,-1,0);
      if (page == (char*)(-1))
        { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
      page_x = (char*)mremap(page,pagesize,NULL,pagesize,MAP_REMAPDUP);
      if (page_x == (char*)(-1))
        { fprintf(stderr,"trampoline: mremap failed!\n"); abort(); }
      if (mprotect(page_x,pagesize,PROT_READ|PROT_EXEC) < 0)
        { fprintf(stderr,"trampoline: mprotect after mremap failed!\n"); abort(); }
 #endif
 #if defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
      /* Extend the file by one page. */
      long new_file_length = file_length + pagesize;
      if (ftruncate(file_fd,new_file_length) < 0)
        { fprintf(stderr,"trampoline: Cannot extend backing file!\n"); abort(); }
      /* Create separate mappings for writing and for executing. */
      page = (char*)mmap(NULL,pagesize,PROT_READ|PROT_WRITE,MAP_SHARED,file_fd,file_length);
      page_x = (char*)mmap(NULL,pagesize,PROT_READ|PROT_EXEC,MAP_SHARED,file_fd,file_length);
      if (page == (char*)(-1) || page_x == (char*)(-1))
        { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
      file_length = new_file_length;
 #endif
      page_end = page + pagesize;
      /* Link the two pages together. */
      ((intptr_t*)page)[0] = page_x - page;
      page = (char*)(((uintptr_t)page + sizeof(intptr_t) + TRAMP_ALIGN-1) & -TRAMP_ALIGN);
#else
#ifdef EXECUTABLE_VIA_MMAP_THEN_MPROTECT
      /* Use mmap with the MAP_ANONYMOUS or MAP_ANON flag. */
      page = mmap(NULL, pagesize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_VARIABLE, -1, 0);
#endif
#ifdef EXECUTABLE_VIA_MMAP
      /* Use mmap with the MAP_ANONYMOUS or MAP_ANON flag. */
      page = mmap(NULL, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS | MAP_VARIABLE, -1, 0);
#endif
      if (page == (char*)(-1))
        { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
      page_end = page + pagesize;
#endif
#endif
      /* Fill it with free trampolines. */
      { char** last = &freelist;
        while (page+TRAMP_TOTAL_LENGTH <= page_end)
          { *last = page; last = (char**)page;
            page = (char*)(((uintptr_t)page + TRAMP_TOTAL_LENGTH + TRAMP_ALIGN-1) & -TRAMP_ALIGN);
          }
        *last = NULL;
    } }
  function = freelist; freelist = *(char**)freelist;
  gl_lock_unlock(freelist_lock);
#else
  { char* room = (char*) malloc(sizeof(void*) + TRAMP_TOTAL_LENGTH + TRAMP_ALIGN-1);
    if (!room)
      { fprintf(stderr,"trampoline: Out of virtual memory!\n"); abort(); }
    function = (char*)(((uintptr_t)room + sizeof(void*) + TRAMP_ALIGN-1) & -TRAMP_ALIGN);
    ((char**)function)[-1] = room; /* backpointer for free_trampoline() */
  }
#endif

  /* Set memory protection to "executable". */
#if !defined(CODE_EXECUTABLE)
#if defined(EXECUTABLE_VIA_MALLOC_THEN_MPROTECT) || defined(EXECUTABLE_VIA_MMAP_THEN_MPROTECT)
  /* Call mprotect on the pages that contain the range. */
  { uintptr_t start_addr = (uintptr_t) function;
    uintptr_t end_addr = (uintptr_t) (function + TRAMP_LENGTH);
    start_addr = start_addr & -pagesize;
    end_addr = (end_addr + pagesize-1) & -pagesize;
   {uintptr_t len = end_addr - start_addr;
    if (mprotect((void*)start_addr, len, PROT_READ|PROT_WRITE|PROT_EXEC) < 0)
      { fprintf(stderr,"trampoline: cannot make memory executable\n"); abort(); }
  }}
#endif
#endif

#if !defined(CODE_EXECUTABLE) && (defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD) || defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX))
  /* Find the executable address corresponding to the writable address. */
  { uintptr_t page = (uintptr_t) function & -(intptr_t)pagesize;
    function_x = function + ((intptr_t*)page)[0];
  }
#else
  function_x = function;
#endif

  /* 2. Fill out the trampoline */
  data = function + TRAMP_LENGTH;
  /* Knowing that data = function + TRAMP_LENGTH, we could certainly optimize
   * the trampolines a little bit more, using PC relative addressing modes.
   * But I doubt it's really worth it.
   */
#ifdef __i386__
  /* function:
   *    movl $<data>,%ecx               B9 <data>
   *    jmp <address>                   E9 <address>-<here>
   * here:
   *    nop                             90
   *    nop                             90
   */
  *(char *)  (function + 0) = 0xB9;
  *(long *)  (function + 1) = (long) data;
  *(char *)  (function + 5) = 0xE9;
  *(long *)  (function + 6) = (long) address - (long) (function_x + 10);
  *(short *) (function +10) = 0x9090;   /* nop nop, for alignment */
#define is_tramp(function)  \
  *(unsigned char *)  (function + 0) == 0xB9 && \
  *(unsigned char *)  (function + 5) == 0xE9
#define tramp_address(function)  \
  *(long *)  (function + 6) + (long) (function + 10)
#define tramp_data(function)  \
  *(long *)  (function + 1)
#endif
#ifdef __m68k__
  /* function:
   *    movel #<data>,a0                20 7C <data>
   *    jmp <address>                   4E F9 <address>
   *    nop                             4E 71
   */
  *(short *) (function + 0) = 0x207C;
  *(long *)  (function + 2) = (long) data;
  *(short *) (function + 6) = 0x4EF9;
  *(long *)  (function + 8) = (long) address;
  *(short *) (function +12) = 0x4E71;
#define is_tramp(function)  \
  *(unsigned short *) (function + 0) == 0x207C && \
  *(unsigned short *) (function + 6) == 0x4EF9 && \
  *(unsigned short *) (function +12) == 0x4E71
#define tramp_address(function)  \
  *(long *)  (function + 8)
#define tramp_data(function)  \
  *(long *)  (function + 2)
#endif
#if (defined(__mips__) || defined(__mipsn32__)) && !defined(__mips64__)
  /* function:
   *    lw $2,16($25)                   8F 22 00 10
   *    lw $25,20($25)                  8F 39 00 14
   *    jal $0,$25                      03 20 00 09  was:  j $25   03 20 00 08
   *    nop                             00 00 00 00
   *    .word <data>                    <data>
   *    .word <address>                 <address>
   */
  *(unsigned int *) (function + 0) = 0x8F220010;
  *(unsigned int *) (function + 4) = 0x8F390014;
  *(unsigned int *) (function + 8) = 0x03200009;
  *(unsigned int *) (function +12) = 0x00000000;
  *(unsigned int *) (function +16) = (unsigned int) data;
  *(unsigned int *) (function +20) = (unsigned int) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0x8F220010 && \
  *(unsigned int *) (function + 4) == 0x8F390014 && \
  *(unsigned int *) (function + 8) == 0x03200009 && \
  *(unsigned int *) (function +12) == 0x00000000
#define tramp_address(function)  \
  *(unsigned int *) (function +20)
#define tramp_data(function)  \
  *(unsigned int *) (function +16)
#endif
#ifdef __mips64old__
  /* function:
   *    dli $2,<data>                   3C 02 hi16(hi32(<data>))
   *                                    34 42 lo16(hi32(<data>))
   *                                    00 02 14 38
   *                                    34 42 hi16(lo32(<data>))
   *                                    00 02 14 38
   *                                    34 42 lo16(lo32(<data>))
   *    dli $25,<address>               3C 19 hi16(hi32(<address>))
   *                                    37 39 lo16(hi32(<address>))
   *                                    00 19 CC 38
   *                                    37 39 hi16(lo32(<address>))
   *                                    00 19 CC 38
   *                                    37 39 lo16(lo32(<address>))
   *    jal $0,$25                      03 20 00 09  was:  j $25   03 20 00 08
   *    nop                             00 00 00 00
   */
  /* What about big endian / little endian ?? */
  *(short *) (function + 0) = 0x3C02;
  *(short *) (function + 2) = (unsigned long) data >> 48;
  *(short *) (function + 4) = 0x3442;
  *(short *) (function + 6) = ((unsigned long) data >> 32) & 0xffff;
  *(int *)   (function + 8) = 0x00021438;
  *(short *) (function +12) = 0x3442;
  *(short *) (function +14) = ((unsigned long) data >> 16) & 0xffff;
  *(int *)   (function +16) = 0x00021438;
  *(short *) (function +20) = 0x3442;
  *(short *) (function +22) = (unsigned long) data & 0xffff;
  *(short *) (function +24) = 0x3C19;
  *(short *) (function +26) = (unsigned long) address >> 48;
  *(short *) (function +28) = 0x3739;
  *(short *) (function +30) = ((unsigned long) address >> 32) & 0xffff;
  *(int *)   (function +32) = 0x0019CC38;
  *(short *) (function +36) = 0x3739;
  *(short *) (function +38) = ((unsigned long) address >> 16) & 0xffff;
  *(int *)   (function +40) = 0x0019CC38;
  *(short *) (function +44) = 0x3739;
  *(short *) (function +46) = (unsigned long) address & 0xffff;
  *(int *)   (function +48) = 0x03200009;
  *(int *)   (function +52) = 0x00000000;
#define is_tramp(function)  \
  *(unsigned short *) (function + 0) == 0x3C02 && \
  *(unsigned short *) (function + 4) == 0x3442 && \
  *(unsigned int *)   (function + 8) == 0x00021438 && \
  *(unsigned short *) (function +12) == 0x3442 && \
  *(unsigned int *)   (function +16) == 0x00021438 && \
  *(unsigned short *) (function +20) == 0x3442 && \
  *(unsigned short *) (function +24) == 0x3C19 && \
  *(unsigned short *) (function +28) == 0x3739 && \
  *(unsigned int *)   (function +32) == 0x0019CC38 && \
  *(unsigned short *) (function +36) == 0x3739 && \
  *(unsigned int *)   (function +40) == 0x0019CC38 && \
  *(unsigned short *) (function +44) == 0x3739 && \
  *(unsigned int *)   (function +48) == 0x03200009 && \
  *(unsigned int *)   (function +52) == 0x00000000
#define hilo(word3,word2,word1,word0)  \
  (((unsigned long) (word3) << 48) | ((unsigned long) (word2) << 32) | \
   ((unsigned long) (word1) << 16) | (unsigned long) (word0))
#define tramp_address(function)  \
  hilo(*(unsigned short *) (function +26), \
       *(unsigned short *) (function +30), \
       *(unsigned short *) (function +38), \
       *(unsigned short *) (function +46))
#define tramp_data(function)  \
  hilo(*(unsigned short *) (function + 2), \
       *(unsigned short *) (function + 6), \
       *(unsigned short *) (function +14), \
       *(unsigned short *) (function +22))
#endif
#ifdef __mips64__
  /* function:
   *    ld $2,16($25)                   DF 22 00 10
   *    ld $25,24($25)                  DF 39 00 18
   *    jal $0,$25                      03 20 00 09  was:  j $25   03 20 00 08
   *    nop                             00 00 00 00
   *    .dword <data>                   <data>
   *    .dword <address>                <address>
   */
  *(unsigned int *)  (function + 0) = 0xDF220010;
  *(unsigned int *)  (function + 4) = 0xDF390018;
  *(unsigned int *)  (function + 8) = 0x03200009;
  *(unsigned int *)  (function +12) = 0x00000000;
  *(unsigned long *) (function +16) = (unsigned long) data;
  *(unsigned long *) (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *)  (function + 0) == 0xDF220010 && \
  *(unsigned int *)  (function + 4) == 0xDF390018 && \
  *(unsigned int *)  (function + 8) == 0x03200009 && \
  *(unsigned int *)  (function +12) == 0x00000000
#define tramp_address(function)  \
  *(unsigned long *) (function +24)
#define tramp_data(function)  \
  *(unsigned long *) (function +16)
#endif
#if defined(__sparc__) && !defined(__sparc64__)
  /* function:
   *    sethi %hi(<data>),%g2           05000000 | (<data> >> 10)
   *    sethi %hi(<address>),%g1        03000000 | (<address> >> 10)
   *    jmp %g1+%lo(<address>)          81C06000 | (<address> & 0x3ff)
   *    or %g2,%lo(<data>),%g2          8410A000 | (<data> & 0x3ff)
   */
#define hi(word)  ((unsigned long) (word) >> 10)
#define lo(word)  ((unsigned long) (word) & 0x3ff)
  *(long *) (function + 0) = 0x05000000 | hi(data);
  *(long *) (function + 4) = 0x03000000 | hi(address);
  *(long *) (function + 8) = 0x81C06000 | lo(address);
  *(long *) (function +12) = 0x8410A000 | lo(data);
#define is_tramp(function)  \
  (*(long *) (function + 0) & 0xffc00000) == 0x05000000 && \
  (*(long *) (function + 4) & 0xffc00000) == 0x03000000 && \
  (*(long *) (function + 8) & 0xfffffc00) == 0x81C06000 && \
  (*(long *) (function +12) & 0xfffffc00) == 0x8410A000
#define hilo(hiword,loword)  (((hiword) << 10) | ((loword) & 0x3ff))
#define tramp_address(function)  \
  hilo(*(long *) (function + 4), *(long *) (function + 8))
#define tramp_data(function)  \
  hilo(*(long *) (function + 0), *(long *) (function +12))
#endif
#ifdef __sparc64__
  /* function:
   *    rd %pc,%g1                      83414000
   *    ldx [%g1+24],%g2                C4586018
   *    jmp %g2                         81C08000
   *    ldx [%g1+16],%g5                CA586010
   *    .long high32(<data>)            <data> >> 32
   *    .long low32(<data>)             <data> & 0xffffffff
   *    .long high32(<address>)         <address> >> 32
   *    .long low32(<address>)          <address> & 0xffffffff
   */
  *(int *)  (function + 0) = 0x83414000;
  *(int *)  (function + 4) = 0xC4586018;
  *(int *)  (function + 8) = 0x81C08000;
  *(int *)  (function +12) = 0xCA586010;
  *(long *) (function +16) = (long) data;
  *(long *) (function +24) = (long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(int *)  (function + 0) == 0x83414000 && \
  *(int *)  (function + 4) == 0xC4586018 && \
  *(int *)  (function + 8) == 0x81C08000 && \
  *(int *)  (function +12) == 0xCA586010
#define tramp_address(function)  \
  *(long *) (function +24)
#define tramp_data(function)  \
  *(long *) (function +16)
#endif
#ifdef __alpha__
  /* function:
   *    br $1,function..ng      00 00 20 C0
   * function..ng:
   *    ldq $27,20($1)          14 00 61 A7
   *    ldq $1,12($1)           0C 00 21 A4
   *    jmp $31,($27),0         00 00 FB 6B
   *    .quad <data>            <data>
   *    .quad <address>         <address>
   */
  { static int code [4] =
      { 0xC0200000, 0xA7610014, 0xA421000C, 0x6BFB0000 };
    int i;
    for (i=0; i<4; i++) { ((int *) function)[i] = code[i]; }
    ((long *) function)[2] = (long) data;
    ((long *) function)[3] = (long) address;
  }
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  ((int *) function)[0] == 0xC0200000 && \
  ((int *) function)[1] == 0xA7610014 && \
  ((int *) function)[2] == 0xA421000C && \
  ((int *) function)[3] == 0x6BFB0000
#define tramp_address(function)  \
  ((long *) function)[3]
#define tramp_data(function)  \
  ((long *) function)[2]
#endif
#ifdef __hppaold__
  /* function:
   *    ldil L'<data>,%r29              23A00000 | hi(<data>)
   *    ldil L'<address>,%r21           22A00000 | hi(<address>)
   *    ldo R'<data>(%r29),%r29         37BD0000 | lo(<data>)
   *    ldo R'<address>(%r21),%r21      36B50000 | lo(<address>)
   *    bb,>=,n %r21,30,function2       C7D5C012
   *    depi 0,31,2,%r21                D6A01C1E
   *    ldw 4(0,%r21),%r19              4AB30008
   *    ldw 0(0,%r21),%r21              4AB50000
   * function2:
   *    ldsid (0,%r21),%r1              02A010A1
   *    mtsp %r1,%sr0                   00011820
   *    be,n 0(%sr0,%r21)               E2A00002
   *    nop                             08000240
   */
  /* When decoding a 21-bit argument in an instruction, the hppa performs
   * the following bit manipulation:
   * assemble21: x[20]...x[0]
   *       --> x[0] x[11]...x[1] x[15]..x[14] x[20]...x[16] x[13]..x[12]
   * When encoding a 21-bit argument into an instruction, we need the
   * to perform the reverse permutation:
   * permute21:  y[20]...y[0]
   *       --> y[6]...y[2] y[8]..y[7] y[1]..y[0] y[19]...y[9] y[20]
   */
#define assemble21(x)  \
  ((((x) & 0x1) << 20) | (((x) & 0xFFE) << 8) | \
   (((x) & 0xC000) >> 7) | (((x) & 0x1F0000) >> 14) | (((x) & 0x3000) >> 12))
#define permute21(y)  \
  ((((y) & 0x7C) << 14) | (((y) & 0x180) << 7) | (((y) & 0x3) << 12) | \
   (((y) & 0xFFE00) >> 8) | (((y) & 0x100000) >> 20))
#define hi(word)  permute21((unsigned long) (word) >> 11)
#define lo(word)  (((unsigned long) (word) & 0x7FF) << 1)
  *(long *) (function + 0) = 0x23A00000 | hi(data);
  *(long *) (function + 4) = 0x22A00000 | hi(address);
  *(long *) (function + 8) = 0x37BD0000 | lo(data);
  *(long *) (function +12) = 0x36B50000 | lo(address);
  *(long *) (function +16) = 0xC7D5C012;
  *(long *) (function +20) = 0xD6A01C1E;
  *(long *) (function +24) = 0x4AB30008;
  *(long *) (function +28) = 0x4AB50000;
  *(long *) (function +32) = 0x02A010A1;
  *(long *) (function +36) = 0x00011820;
  *(long *) (function +40) = 0xE2A00002;
  *(long *) (function +44) = 0x08000240;
#define is_tramp(function)  \
  ((long) function & 3) == 0 && \
  (*(long *) (function + 0) & 0xffe00000) == 0x23A00000 && \
  (*(long *) (function + 4) & 0xffe00000) == 0x22A00000 && \
  (*(long *) (function + 8) & 0xfffff000) == 0x37BD0000 && \
  (*(long *) (function +12) & 0xfffff000) == 0x36B50000 && \
  *(long *) (function +16) == 0xC7D5C012 && \
  *(long *) (function +20) == 0xD6A01C1E && \
  *(long *) (function +24) == 0x4AB30008 && \
  *(long *) (function +28) == 0x4AB50000 && \
  *(long *) (function +32) == 0x02A010A1 && \
  *(long *) (function +36) == 0x00011820 && \
  *(long *) (function +40) == 0xE2A00002 && \
  *(long *) (function +44) == 0x08000240
#define hilo(hiword,loword)  \
  ((assemble21((unsigned long) (hiword)) << 11) | \
   (((unsigned long) (loword) & 0xFFE) >> 1) \
  )
#define tramp_address(function)  \
  hilo(*(long *) (function + 4), *(long *) (function +12))
#define tramp_data(function)  \
  hilo(*(long *) (function + 0), *(long *) (function + 8))
#endif
#ifdef __hppanew__
  /* function:
   *    .long   tramp_r
   *    .long   closure
   * closure:
   *    .long   <data>
   *    .long   <address>
   */
  { /* The 'volatile' below works around GCC bug
       <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=116481>. */
    void* volatile tramp_r_address = &tramp_r;
    *(long *) (function + 0) = ((long *) ((char*)tramp_r_address-2))[0];
    *(long *) (function + 4) = (long) (function + 8);
    *(long *) (function + 8) = (long) data;
    *(long *) (function +12) = (long) address;
  }
#define TRAMP_CODE_LENGTH  0
#define is_tramp(function)  \
  ((long *) function)[0] == ((long *) ((char*)tramp_r_address-2))[0]
#define tramp_address(function)  \
  ((long *) function)[3]
#define tramp_data(function)  \
  ((long *) function)[2]
#endif
#ifdef __hppa64old__
  /* function:
   *    mfia %r27                       000014BB
   *    ldd 32(%r27),%r31               537F0040
   *    ldd 40(%r27),%r27               537B0050
   *    ldd 16(%r27),%r1                53610020
   *    ldd 24(%r27),%r27               537B0030
   *    bve (%r1)                       E820D000
   *     nop                            08000240
   *    .align 8
   *    .dword <data>
   *    .dword <address>
   * function_pointer:
   *    .dword 0
   *    .dword 0
   *    .dword function
   *    .dword 0
   */
  *(int *)  (function + 0) = 0x000014BB;
  *(int *)  (function + 4) = 0x537F0040;
  *(int *)  (function + 8) = 0x537B0050;
  *(int *)  (function +12) = 0x53610020;
  *(int *)  (function +16) = 0x537B0030;
  *(int *)  (function +20) = 0xE820D000;
  *(int *)  (function +24) = 0x08000240;
  *(long *) (function +32) = (long)data;
  *(long *) (function +40) = (long)address;
  *(long *) (function +48) = (long)0;
  *(long *) (function +56) = (long)0;
  *(long *) (function +64) = (long)function;
  *(long *) (function +72) = (long)0;
#define TRAMP_CODE_LENGTH  28
#define is_tramp(function)  \
  *(int *) (function + 0) == 0x000014BB && \
  *(int *) (function + 4) == 0x537F0040 && \
  *(int *) (function + 8) == 0x537B0050 && \
  *(int *) (function +12) == 0x53610020 && \
  *(int *) (function +16) == 0x537B0030 && \
  *(int *) (function +20) == 0xE820D000 && \
  *(int *) (function +24) == 0x08000240
#define tramp_address(function)  \
  (*(unsigned long *) (function +40))
#define tramp_data(function)  \
  (*(unsigned long *) (function +32))
#endif
#ifdef __hppa64new__
  /* function:
   *    .dword 0
   *    .dword 0
   *    .dword tramp
   *    .dword closure
   * closure:
   *    .dword <data>
   *    .dword <address>
   */
  *(long *) (function + 0) = 0;
  *(long *) (function + 8) = 0;
  *(long *) (function +16) = ((long *) (void*) &tramp_r)[2];
  *(long *) (function +24) = (long) (function + 32);
  *(long *) (function +32) = (long) data;
  *(long *) (function +40) = (long) address;
#define TRAMP_CODE_LENGTH  0
#define is_tramp(function)  \
  ((long *) function)[2] == ((long *) (void*) &tramp_r)[2] && \
  ((long *) function)[3] == (long) (function + 32)
#define tramp_address(function)  \
  ((long *) function)[5]
#define tramp_data(function)  \
  ((long *) function)[4]
#endif
#if defined(__arm__) || defined(__armhf__)
  /* function:
   *    mov     ip,sp                   E1A0C00D
   *    stmdb   sp!,{r0,r1,r2,r3}       E92D000F
   *    stmfd   sp!,{fp,ip,lr,pc}       E92DD800
   *    sub     fp,ip,#20               E24CB014
   *    sub     sp,sp,#8                E24DD008
   *    ldr     ip,[pc,#12]             E59FC00C        @ Get <data>
   *    str     ip,[sp,#0]              E58DC000        @ Put <data> on stack
   *    mov     lr,pc                   E1A0E00F        @ Prepare call (put return address in lr)
   *    ldr     pc,[pc,#4]              E59FF004        @ Call <address> with the same args in registers
   *    ldmea   fp,{fp,sp,pc}           E91BA800        @ Restore fp and sp, and return to return address.
   * _data:
   *    .word   <data>
   * _address:
   *    .word   <address>
   */
  {
    ((long *) function)[0] = 0xE1A0C00D;
    ((long *) function)[1] = 0xE92D000F;
    ((long *) function)[2] = 0xE92DD800;
    ((long *) function)[3] = 0xE24CB014;
    ((long *) function)[4] = 0xE24DD008;
    ((long *) function)[5] = 0xE59FC00C;
    ((long *) function)[6] = 0xE58DC000;
    ((long *) function)[7] = 0xE1A0E00F;
    ((long *) function)[8] = 0xE59FF004;
    ((long *) function)[9] = 0xE91BA800;
    ((long *) function)[10] = (long) data;
    ((long *) function)[11] = (long) address;
  }
#define TRAMP_CODE_LENGTH  40
#define is_tramp(function)  \
  ((long *) function)[0] == 0xE1A0C00D && \
  ((long *) function)[1] == 0xE92D000F && \
  ((long *) function)[2] == 0xE92DD800 && \
  ((long *) function)[3] == 0xE24CB014 && \
  ((long *) function)[4] == 0xE24DD008 && \
  ((long *) function)[5] == 0xE59FC00C && \
  ((long *) function)[6] == 0xE58DC000 && \
  ((long *) function)[7] == 0xE1A0E00F && \
  ((long *) function)[8] == 0xE59FF004 && \
  ((long *) function)[9] == 0xE91BA800
#define tramp_address(function)  \
  ((long *) function)[11]
#define tramp_data(function)  \
  ((long *) function)[10]
#endif
#ifdef __arm64__
  /* function:
   *    ldr x17,.+24            580000D1
   *    ldr x18,.+12            58000072
   *    br x17                  D61F0220
   *    nop                     D503201F
   *    .xword <data>           <data>
   *    .xword <address>        <address>
   */
  *(int *)   (function + 0) = 0x580000D1;
  *(int *)   (function + 4) = 0x58000072;
  *(int *)   (function + 8) = 0xD61F0220;
  *(int *)   (function +12) = 0xD503201F;
  *(long *)  (function +16) = (unsigned long) data;
  *(long *)  (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0x580000D1 && \
  *(unsigned int *) (function + 4) == 0x58000072 && \
  *(unsigned int *) (function + 8) == 0xD61F0220 && \
  *(unsigned int *) (function +12) == 0xD503201F
#define tramp_address(function)  \
  (*(unsigned long *) (function +24))
#define tramp_data(function)  \
  (*(unsigned long *) (function +16))
#endif
#ifdef __powerpcsysv4__
  /* function:
   *    {liu|lis} 11,hi16(<data>)               3D 60 hi16(<data>)
   *    {oril|ori} 11,11,lo16(<data>)           61 6B lo16(<data>)
   *    {liu|lis} 0,hi16(<address>)             3C 00 hi16(<address>)
   *    {oril|ori} 0,0,lo16(<address>)          60 00 lo16(<address>)
   *    mtctr 0                                 7C 09 03 A6
   *    bctr                                    4E 80 04 20
   */
  *(short *) (function + 0) = 0x3D60;
  *(short *) (function + 2) = (unsigned long) data >> 16;
  *(short *) (function + 4) = 0x616B;
  *(short *) (function + 6) = (unsigned long) data & 0xffff;
  *(short *) (function + 8) = 0x3C00;
  *(short *) (function +10) = (unsigned long) address >> 16;
  *(short *) (function +12) = 0x6000;
  *(short *) (function +14) = (unsigned long) address & 0xffff;
  *(long *)  (function +16) = 0x7C0903A6;
  *(long *)  (function +20) = 0x4E800420;
#define is_tramp(function)  \
  *(unsigned short *) (function + 0) == 0x3D60 && \
  *(unsigned short *) (function + 4) == 0x616B && \
  *(unsigned short *) (function + 8) == 0x3C00 && \
  *(unsigned short *) (function +12) == 0x6000 && \
  *(unsigned long *)  (function +16) == 0x7C0903A6 && \
  *(unsigned long *)  (function +20) == 0x4E800420
#define hilo(hiword,loword)  \
  (((unsigned long) (hiword) << 16) | (unsigned long) (loword))
#define tramp_address(function)  \
  hilo(*(unsigned short *) (function +10), *(unsigned short *) (function +14))
#define tramp_data(function)  \
  hilo(*(unsigned short *) (function + 2), *(unsigned short *) (function + 6))
#endif
#ifdef __powerpcaix__
  /* function:
   *    .long .tramp_r
   *    .long .mytoc
   *    .long 0
   * .mytoc:
   *    .long <data>
   *    .long <address>
   */
  *(long *)  (function + 0) = ((long *) &tramp_r)[0];
  *(long *)  (function + 4) = (long) (function + 12);
  *(long *)  (function + 8) = 0;
  *(long *)  (function +12) = (long) data;
  *(long *)  (function +16) = (long) address;
#define TRAMP_CODE_LENGTH  0
#define is_tramp(function)  \
  ((long *) function)[0] == ((long *) &tramp_r)[0]
#define tramp_address(function)  \
  ((long *) function)[4]
#define tramp_data(function)  \
  ((long *) function)[3]
#endif
#ifdef __powerpc64_elfv2__
  /* function:
   *    ld 11,16(12)            10 00 6C E9
   *    ld 12,24(12)            18 00 8C E9
   *    mtctr 12                A6 03 89 7D
   *    bctr                    20 04 80 4E
   *    .quad <data>
   *    .quad <address>
   */
  *(int *)   (function + 0) = 0xE96C0010;
  *(int *)   (function + 4) = 0xE98C0018;
  *(int *)   (function + 8) = 0x7D8903A6;
  *(int *)   (function +12) = 0x4E800420;
  *(long *)  (function +16) = (unsigned long) data;
  *(long *)  (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0xE96C0010 && \
  *(unsigned int *) (function + 4) == 0xE98C0018 && \
  *(unsigned int *) (function + 8) == 0x7D8903A6 && \
  *(unsigned int *) (function +12) == 0x4E800420
#define tramp_address(function)  \
  (*(unsigned long *) (function +24))
#define tramp_data(function)  \
  (*(unsigned long *) (function +16))
#endif
#ifdef __powerpc64aix__
  /* function:
   *    .quad .tramp_r
   *    .quad .mytoc
   *    .quad 0
   * .mytoc:
   *    .quad <data>
   *    .quad <address>
   */
  *(long *)  (function + 0) = ((long *) &tramp_r)[0];
  *(long *)  (function + 8) = (long) (function + 24);
  *(long *)  (function +16) = 0;
  *(long *)  (function +24) = (long) data;
  *(long *)  (function +32) = (long) address;
#define TRAMP_CODE_LENGTH  0
#define is_tramp(function)  \
  ((long *) function)[0] == ((long *) &tramp_r)[0]
#define tramp_address(function)  \
  ((long *) function)[4]
#define tramp_data(function)  \
  ((long *) function)[3]
#endif
#ifdef __ia64__
  /* function:
   *    data8   tramp_r
   *    data8   closure
   * closure:
   *    data8   <address>
   *    data8   <data>
   */
  *(long *) (function + 0) = (long) &tramp_r;
  *(long *) (function + 8) = (long) (function + 16);
  *(long *) (function +16) = (long) address;
  *(long *) (function +24) = (long) data;
#define TRAMP_CODE_LENGTH  0
#define is_tramp(function)  \
  ((long *) function)[0] == (long) &tramp_r && \
  ((long *) function)[1] == (long) (function + 16)
#define tramp_address(function)  \
  ((long *) function)[2]
#define tramp_data(function)  \
  ((long *) function)[3]
#endif
#ifdef __x86_64__
#ifdef __x86_64_x32__
  /* function:
   *    movl $<data>,%r10d              41 BA <data>
   *    movl $<address>,%rax            B8 <address>
   *    jmp *%rax                       FF E0
   */
  *(int *)   (function + 0) = ((unsigned long) data << 16) | 0xBA41;
  *(int *)   (function + 4) = ((unsigned long) address << 24) | 0xB80000 | ((unsigned long) data >> 16);
  *(int *)   (function + 8) = 0xFF000000 | ((unsigned long) address >> 8);
  *(int *)   (function +12) = 0xE0;
#define is_tramp(function)  \
  (*(unsigned long *) (function + 0) & 0x0000FFFF) == 0xBA41 && \
  (*(unsigned long *) (function + 4) & 0x00FF0000) == 0xB80000 && \
  (*(unsigned long *) (function + 8) & 0xFF000000) == 0xFF000000 && \
   *(unsigned char *) (function +12) == 0xE0
#define tramp_address(function)  \
  ((*(unsigned long *) (function + 4) >> 24) | \
   (*(unsigned long *) (function + 8) << 8))
#define tramp_data(function)  \
  ((*(unsigned long *) (function + 0) >> 16) | \
   (*(unsigned long *) (function + 4) << 16))
#else
  /* function:
   *    movabsq $<data>,%r10            49 BA <data>
   *    movabsq $<address>,%rax         48 B8 <address>
   *    jmp *%rax                       FF E0
   */
  *(short *) (function + 0) = 0xBA49;
  *(short *) (function + 2) = (unsigned long long) data & 0xffff;
  *(int *)   (function + 4) = ((unsigned long long) data >> 16) & 0xffffffff;
  *(short *) (function + 8) = ((unsigned long long) data >> 48) & 0xffff;
  *(short *) (function +10) = 0xB848;
  *(int *)   (function +12) = (unsigned long long) address & 0xffffffff;
  *(int *)   (function +16) = ((unsigned long long) address >> 32) & 0xffffffff;
  *(short *) (function +20) = 0xE0FF;
#define is_tramp(function)  \
  *(unsigned short *) (function + 0) == 0xBA49 && \
  *(unsigned short *) (function +10) == 0xB848 && \
  *(unsigned short *) (function +20) == 0xE0FF
#define hilo(hiword,loword)  \
  (((unsigned long long) (hiword) << 32) | (unsigned long long) (loword))
#define himidlo(hishort,midword,loshort)  \
  (((unsigned long long) (hishort) << 48) | (unsigned long long) (midword) << 16 \
   | (unsigned long long) (loshort))
#define tramp_address(function)  \
  hilo(*(unsigned int *) (function +16), *(unsigned int *) (function +12))
#define tramp_data(function)  \
  himidlo(*(unsigned short *) (function + 8), \
          *(unsigned int *)   (function + 4), \
          *(unsigned short *) (function + 2))
#endif
#endif
#if defined(__s390__) && !defined(__s390x__)
  /* function:
   *    bras %r1,.L1                    A7150002
   * .L1:
   *    lm %r0,%r1,data-.L1(%r1)        98011008
   *    br %r1                          07F1
   *    nop                             0707
   * data:    .long <data>
   * address: .long <address>
   */
  *(int *)   (function + 0) = 0xA7150002;
  *(int *)   (function + 4) = 0x98011008;
  *(int *)   (function + 8) = 0x07F10707;
  *(int *)   (function +12) = (unsigned int) data;
  *(int *)   (function +16) = (unsigned int) address;
#define TRAMP_CODE_LENGTH  12
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0xA7150002 && \
  *(unsigned int *) (function + 4) == 0x98011008 && \
  *(unsigned int *) (function + 8) == 0x07F10707
#define tramp_address(function)  \
  *(unsigned int *) (function +16)
#define tramp_data(function)  \
  *(unsigned int *) (function +12)
#endif
#ifdef __s390x__
  /* function:
   *    larl %r1,.L1                    C01000000003
   * .L1:
   *    lmg %r0,%r1,data-.L1(%r1)       EB01100A0004
   *    br %r1                          07F1
   *    nop                             0707
   * data:    .quad <data>
   * address: .quad <address>
   */
  *(int *)   (function + 0) = 0xC0100000;
  *(int *)   (function + 4) = 0x0003EB01;
  *(int *)   (function + 8) = 0x100A0004;
  *(int *)   (function +12) = 0x07F10707;
  *(long *)  (function +16) = (unsigned long) data;
  *(long *)  (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0xC0100000 && \
  *(unsigned int *) (function + 4) == 0x0003EB01 && \
  *(unsigned int *) (function + 8) == 0x100A0004 && \
  *(unsigned int *) (function +12) == 0x07F10707
#define tramp_address(function)  \
  (*(unsigned long *) (function +24))
#define tramp_data(function)  \
  (*(unsigned long *) (function +16))
#endif
#ifdef __riscv32__
  /* function:
   *    auipc t0,0                      00000297
   *    lw t1,20(t0)                    0142A303
   *    lw t2,16(t0)                    0102A383
   *    jr t1                           00030067
   * data:    .quad <data>
   * address: .quad <address>
   */
  *(int *)   (function + 0) = 0x00000297;
  *(int *)   (function + 4) = 0x0142A303;
  *(int *)   (function + 8) = 0x0102A383;
  *(int *)   (function +12) = 0x00030067;
  *(int *)   (function +16) = (unsigned int) data;
  *(int *)   (function +24) = (unsigned int) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0x00000297 && \
  *(unsigned int *) (function + 4) == 0x0142A303 && \
  *(unsigned int *) (function + 8) == 0x0102A383 && \
  *(unsigned int *) (function +12) == 0x00030067
#define tramp_address(function)  \
  (*(unsigned int *) (function +20))
#define tramp_data(function)  \
  (*(unsigned int *) (function +16))
#endif
#ifdef __riscv64__
  /* function:
   *    auipc t0,0                      00000297
   *    ld t1,24(t0)                    0182B303
   *    ld t2,16(t0)                    0102B383
   *    jr t1                           00030067
   * data:    .quad <data>
   * address: .quad <address>
   */
  *(int *)   (function + 0) = 0x00000297;
  *(int *)   (function + 4) = 0x0182B303;
  *(int *)   (function + 8) = 0x0102B383;
  *(int *)   (function +12) = 0x00030067;
  *(long *)  (function +16) = (unsigned long) data;
  *(long *)  (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *) (function + 0) == 0x00000297 && \
  *(unsigned int *) (function + 4) == 0x0182B303 && \
  *(unsigned int *) (function + 8) == 0x0102B383 && \
  *(unsigned int *) (function +12) == 0x00030067
#define tramp_address(function)  \
  (*(unsigned long *) (function +24))
#define tramp_data(function)  \
  (*(unsigned long *) (function +16))
#endif
#ifdef __loongarch64__
  /* function:
   *    pcaddu12i $r12,0                1C00000C
   *    ld.d $r20,$r12,16               28C04194
   *    ld.d $r12,$r12,24               28C0618C
   *    jirl $r0,$r12,0                 4C000180
   *    .dword <data>                   <data>
   *    .dword <address>                <address>
   */
  *(unsigned int *)  (function + 0) = 0x1C00000C;
  *(unsigned int *)  (function + 4) = 0x28C04194;
  *(unsigned int *)  (function + 8) = 0x28C0618C;
  *(unsigned int *)  (function +12) = 0x4C000180;
  *(unsigned long *) (function +16) = (unsigned long) data;
  *(unsigned long *) (function +24) = (unsigned long) address;
#define TRAMP_CODE_LENGTH  16
#define is_tramp(function)  \
  *(unsigned int *)  (function + 0) == 0x1C00000C && \
  *(unsigned int *)  (function + 4) == 0x28C04194 && \
  *(unsigned int *)  (function + 8) == 0x28C0618C && \
  *(unsigned int *)  (function +12) == 0x4C000180
#define tramp_address(function)  \
  *(unsigned long *) (function +24)
#define tramp_data(function)  \
  *(unsigned long *) (function +16)
#endif
  /*
   * data:
   *    <data0>                         <data0>
   *    <data1>                         <data1>
   */
  *(void* *) (data + 0*sizeof(void*)) = data0;
  *(void* *) (data + 1*sizeof(void*)) = data1;

  /* 3. Flush instruction cache */
  /* We need this because some CPUs have separate data cache and instruction
   * cache. The freshly built trampoline is visible to the data cache, but not
   * maybe not to the instruction cache. This is hairy.
   */
  /* TRAMP_CODE_LENGTH = length of the machine instructions. */
#ifndef TRAMP_CODE_LENGTH
#define TRAMP_CODE_LENGTH TRAMP_LENGTH
#endif
#if !(defined(__hppanew__) || defined(__hppa64new__) || defined(__powerpcaix__) || defined(__powerpc64aix__) || defined(__ia64__))
  /* Only needed if we really set up machine instructions. */
  /* Use the operating system provided function, when available. */
#if defined _WIN32 && !defined __CYGWIN__
  /* Native Windows.
     FlushInstructionCache
     <https://docs.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-flushinstructioncache>  */
  HANDLE process = GetCurrentProcess ();
  while (!FlushInstructionCache (process, function_x, TRAMP_CODE_LENGTH))
    ;
#elif defined __APPLE__ && defined __MACH__
  /* macOS  */
  sys_icache_invalidate (function_x, TRAMP_CODE_LENGTH);
#elif defined _AIX
  /* AIX.  */
  _sync_cache_range (function_x, TRAMP_CODE_LENGTH);
#elif defined __sgi
  /* IRIX.  */
  cacheflush (function_x, TRAMP_CODE_LENGTH, ICACHE);
#elif defined __sun
  /* Solaris.  */
  extern void sync_instruction_memory (char *, size_t);
  sync_instruction_memory (function_x, TRAMP_CODE_LENGTH);
#else
  /* No operating system provided function. Dispatch according to the CPU. */
#ifdef __i386__
#if defined(_WIN32)
  while (!FlushInstructionCache(GetCurrentProcess(),function_x,TRAMP_CODE_LENGTH))
    continue;
#endif
#endif
#ifdef __m68k__
#if defined(__NetBSD__) && defined(__GNUC__)
  { register uintptr_t _beg __asm__ ("%a1") = (uintptr_t) function_x;
    register uintptr_t _len __asm__ ("%d1") = TRAMP_CODE_LENGTH;
    __asm__ __volatile__ (
      "move%.l %#0x80000004,%/d0\n\t" /* CC_EXTPURGE | C_IPURGE */
      "trap #12"                      /* kernel call ‘cachectl’ */
      :
      : "a" (_beg), "d" (_len)
      : "%a0", "%a1", "%d0", "%d1"    /* call-used registers */
      );
  }
#endif
#if defined(__linux__) && defined(__GNUC__)
  { register uintptr_t _beg __asm__ ("%d1") = (uintptr_t) function_x;
    register uintptr_t _len __asm__ ("%d4") = TRAMP_CODE_LENGTH + 32;
    __asm__ __volatile__ (
      "move%.l %#123,%/d0\n\t"
      "move%.l %#1,%/d2\n\t"
      "move%.l %#3,%/d3\n\t"
      "trap %#0"
      :
      : "d" (_beg), "d" (_len)
      : "%d0", "%d2", "%d3"
      );
  }
#endif
#if defined(AUX) && defined(__GNUC__)
  /* sysm68k(105, addr, scope, cache, len) */
  __asm__ __volatile__ (
    "move%.l %1,%/sp@-\n\t"
    "move%.l %#3,%/sp@-\n\t"
    "move%.l %#1,%/sp@-\n\t"
    "move%.l %0,%/sp@-\n\t"
    "move%.l %#105,%/sp@-\n\t"
    "move%.l %#0,%/sp@-\n\t"
    "move%.l %#38,%/sp@-\n\t"
    "trap %#0\n\t"
    "add%.l %#24,%/sp"
    :
    : "r" (function_x), "g" ((int)TRAMP_CODE_LENGTH)
    : "%d0"
    );
#endif
#endif
#if defined(__mips__) || defined(__mipsn32__) || defined(__mips64__)
  cacheflush(function_x,TRAMP_CODE_LENGTH,ICACHE);
  /* gforth-0.3.0 uses BCACHE instead of ICACHE. Why?? */
#endif
#if defined(__sparc__) || defined(__sparc64__)
  /* This assumes that the trampoline fits in at most two cache lines. */
  __TR_clear_cache_2(function_x,function_x+TRAMP_CODE_LENGTH-1);
#endif
#ifdef __alpha__
  __TR_clear_cache();
#endif
#if defined(__hppa__) || defined(__hppa64__)
  /* This assumes that the trampoline fits in at most two cache lines. */
  __TR_clear_cache(function_x,function_x+TRAMP_CODE_LENGTH-1);
#endif
#if defined(__arm__) || defined(__armhf__) || defined(__arm64__)
  /* On ARM, cache flushing can only be done through a system call.
     GCC implements it for Linux with EABI, through an "swi 0" with code
     0xf0002. For other systems, it may be an "swi 0x9f0002",
     an "swi 0xf00000", or similar.  */
  /* On ARM64, cache flushing is done through special instructions,
     and the length of the cache lines must be determined at runtime.
     See gcc/libgcc/config/aarch64/sync-cache.c. */
#if defined(__GNUC__)
  /* Use the GCC built-in. */
  __clear_cache((void*)function_x,(void*)(function_x+TRAMP_CODE_LENGTH));
#else
  #error "Don't know how to implement clear_cache on this platform."
#endif
#endif
#if defined(__powerpc__) || defined(__powerpc64__)
  __TR_clear_cache_2(function_x);
#endif
#if defined(__riscv32__) || defined(__riscv64__)
#if defined(__linux__)
  /* Use the libc function. */
  __riscv_flush_icache((void*)function_x,(void*)(function_x+TRAMP_CODE_LENGTH),0);
#elif defined(__GNUC__)
  __asm__ __volatile__ ("fence.i");
#endif
#endif
#if defined(__loongarch64__)
  /* Use the GCC built-in. It expands to 'ibar 0'. */
  __clear_cache((void*)function_x,(void*)(function_x+TRAMP_CODE_LENGTH));
#endif
#endif
#endif

  /* 4. Return. */
  return (__TR_function) (function_x + TRAMP_BIAS);
}

void free_trampoline_r (__TR_function function)
{
#if TRAMP_BIAS
  function = (__TR_function)((char*)function - TRAMP_BIAS);
#endif
#if !defined(CODE_EXECUTABLE) && !defined(EXECUTABLE_VIA_MALLOC_THEN_MPROTECT)
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD) || defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
  /* Find the writable address corresponding to the executable address. */
  { uintptr_t page_x = (uintptr_t) function & -(intptr_t)pagesize;
    function -= ((intptr_t*)page_x)[0];
  }
#endif
  gl_lock_lock(freelist_lock);
  *(char**)function = freelist; freelist = (char*)function;
  gl_lock_unlock(freelist_lock);
  /* It is probably not worth calling munmap() for entirely freed pages. */
#else
  free(((char**)function)[-1]);
#endif
}

int is_trampoline_r (void* function)
{
#if defined(is_tramp) && defined(tramp_data)
#ifdef __hppanew__
  /* The 'volatile' below works around GCC bug
     <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=116481>. */
  void* volatile tramp_r_address = &tramp_r;
  if (!(((uintptr_t)function & 3) == (TRAMP_BIAS & 3))) return 0;
#endif
#ifdef __OpenBSD__
  /* OpenBSD mmaps code VMAs with protection PROT_EXEC, not PROT_READ|PROT_EXEC.
     Therefore is_tramp may crash if given the address of a normal function.
     Seen on OpenBSD 7.5/arm64. */
  int prot = get_vma_prot (function, 1);
  if (prot != -1
      && (prot & VMA_PROT_READ) == 0)
    /* Memory of the given function is not readable. Therefore it cannot be
       a trampoline. */
    return 0;
#endif
  if (is_tramp(((char*)function - TRAMP_BIAS)))
    {
      char* function_w;
#if defined(EXECUTABLE_VIA_MMAP_SHARED_MACOS) || defined(EXECUTABLE_VIA_MMAP_SHARED_NETBSD) || defined(EXECUTABLE_VIA_MMAP_SHARED_MEMFD) || defined(EXECUTABLE_VIA_MMAP_SHARED_POSIX)
      /* Find the writable address corresponding to the executable address. */
      { uintptr_t page_x = (uintptr_t) function & -(intptr_t)pagesize;
        function_w = function - ((intptr_t*)page_x)[0];
      }
#else
      function_w = function;
#endif
      return (tramp_data(((char*)function - TRAMP_BIAS))) == (uintptr_t)((char*)function_w - TRAMP_BIAS + TRAMP_LENGTH);
    }
  return 0;
#else
  abort();
#endif
}

__TR_function trampoline_r_address (__TR_function function)
{
#ifdef tramp_address
  return (__TR_function)(tramp_address(((char*)function - TRAMP_BIAS)));
#else
  abort();
#endif
}

void* trampoline_r_data0 (__TR_function function)
{
#ifdef tramp_data
  return ((void**)((char*)function-TRAMP_BIAS+TRAMP_LENGTH))[0];
#else
  abort();
#endif
}

void* trampoline_r_data1 (__TR_function function)
{
#ifdef tramp_data
  return ((void**)((char*)function-TRAMP_BIAS+TRAMP_LENGTH))[1];
#else
  abort();
#endif
}
