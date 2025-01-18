/* vacall function for x86_64 CPU with the Unix ABI ('gcc -mabi=sysv') */

/*
 * Copyright 1995-2021 Bruno Haible <bruno@clisp.org>
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

#include "vacall-internal.h"

#ifdef REENTRANT
#define vacall_receiver callback_receiver
register struct { void (*vacall_function) (void*,va_alist); void* arg; }
         *              env     __asm__("r10");
#endif

/*register __varword iarg1 __asm__("rdi");*/
/*register __varword iarg2 __asm__("rsi");*/
/*register __varword iarg3 __asm__("rdx");*/
/*register __varword iarg4 __asm__("rcx");*/
/*register __varword iarg5 __asm__("r8");*/
/*register __varword iarg6 __asm__("r9");*/

register double farg1 __asm__("xmm0");
register double farg2 __asm__("xmm1");
register double farg3 __asm__("xmm2");
register double farg4 __asm__("xmm3");
register double farg5 __asm__("xmm4");
register double farg6 __asm__("xmm5");
register double farg7 __asm__("xmm6");
register double farg8 __asm__("xmm7");

register __varword iret  __asm__("rax");
register __varword iret2 __asm__("rdx");
register float  fret __asm__("xmm0");
register double dret __asm__("xmm0");

/*
 * Tell gcc to not use the call-saved registers %rbx, %rbp.
 * This ensures that the return sequence does not need to restore registers
 * from the stack.
 */
register void*  dummy1  __asm__("%rbx");
#if __GNUC__ < 4 || (__GNUC__ == 4 && __GNUC_MINOR__ < 9)
register void*  dummy2  __asm__("%rbp");
#endif

#ifdef REENTRANT
static
#endif
void /* the return type is variable, not void! */
vacall_receiver (__vaword word1, __vaword word2, __vaword word3, __vaword word4,
                 __vaword word5, __vaword word6,
                 __vaword firstword)
{
  __va_alist list;
  /* Move the arguments passed in registers to temp storage. */
  list.iarg[0] = word1;
  list.iarg[1] = word2;
  list.iarg[2] = word3;
  list.iarg[3] = word4;
  list.iarg[4] = word5;
  list.iarg[5] = word6;
  list.farg[0] = farg1;
  list.farg[1] = farg2;
  list.farg[2] = farg3;
  list.farg[3] = farg4;
  list.farg[4] = farg5;
  list.farg[5] = farg6;
  list.farg[6] = farg7;
  list.farg[7] = farg8;
  /* Prepare the va_alist. */
  list.flags = 0;
  list.aptr = (long)&firstword;
  list.raddr = (void*)0;
  list.rtype = __VAvoid;
  list.ianum = 0;
  list.fanum = 0;
  /* Call vacall_function. The macros do all the rest. */
#ifndef REENTRANT
  (*vacall_function) (&list);
#else /* REENTRANT */
  (*env->vacall_function) (env->arg,&list);
#endif
  /* Put return value into proper register. */
  if (list.rtype == __VAvoid) {
  } else
  if (list.rtype == __VAchar) {
    iret = list.tmp._char;
  } else
  if (list.rtype == __VAschar) {
    iret = list.tmp._schar;
  } else
  if (list.rtype == __VAuchar) {
    iret = list.tmp._uchar;
  } else
  if (list.rtype == __VAshort) {
    iret = list.tmp._short;
  } else
  if (list.rtype == __VAushort) {
    iret = list.tmp._ushort;
  } else
  if (list.rtype == __VAint) {
    iret = list.tmp._int;
  } else
  if (list.rtype == __VAuint) {
    iret = list.tmp._uint;
  } else
  if (list.rtype == __VAlong) {
    iret = list.tmp._long;
  } else
  if (list.rtype == __VAulong) {
    iret = list.tmp._ulong;
  } else
  if (list.rtype == __VAlonglong) {
#ifdef __x86_64_x32__
    iret = list.tmp._longlong;
#else
    iret = list.tmp._long;
#endif
  } else
  if (list.rtype == __VAulonglong) {
#ifdef __x86_64_x32__
    iret = list.tmp._ulonglong;
#else
    iret = list.tmp._ulong;
#endif
  } else
  if (list.rtype == __VAfloat) {
    fret = list.tmp._float;
  } else
  if (list.rtype == __VAdouble) {
    dret = list.tmp._double;
  } else
  if (list.rtype == __VAvoidp) {
#ifdef __x86_64_x32__
    /* The x86_64 ABI, section 10.1, specifies that pointers are zero-extended
       from 32 bits to 64 bits. */
    iret = (unsigned long long)(unsigned long)list.tmp._ptr;
#else
    iret = (long)list.tmp._ptr;
#endif
  } else
  if (list.rtype == __VAstruct) {
    if (list.flags & __VA_REGISTER_STRUCT_RETURN) {
      /* Return structs of size <= 16 in registers. */
      if (list.rsize > 0 && list.rsize <= 16) {
        #if 0 /* Unoptimized */
        iret = (__varword)((unsigned char *) list.raddr)[0];
        if (list.rsize >= 2)
          iret |= (__varword)((unsigned char *) list.raddr)[1] << 8;
        if (list.rsize >= 3)
          iret |= (__varword)((unsigned char *) list.raddr)[2] << 16;
        if (list.rsize >= 4)
          iret |= (__varword)((unsigned char *) list.raddr)[3] << 24;
        if (list.rsize >= 5)
          iret |= (__varword)((unsigned char *) list.raddr)[4] << 32;
        if (list.rsize >= 6)
          iret |= (__varword)((unsigned char *) list.raddr)[5] << 40;
        if (list.rsize >= 7)
          iret |= (__varword)((unsigned char *) list.raddr)[6] << 48;
        if (list.rsize >= 8)
          iret |= (__varword)((unsigned char *) list.raddr)[7] << 56;
        if (list.rsize >= 9) {
          iret2 = (__varword)((unsigned char *) list.raddr)[8];
          if (list.rsize >= 10)
            iret2 |= (__varword)((unsigned char *) list.raddr)[9] << 8;
          if (list.rsize >= 11)
            iret2 |= (__varword)((unsigned char *) list.raddr)[10] << 16;
          if (list.rsize >= 12)
            iret2 |= (__varword)((unsigned char *) list.raddr)[11] << 24;
          if (list.rsize >= 13)
            iret2 |= (__varword)((unsigned char *) list.raddr)[12] << 32;
          if (list.rsize >= 14)
            iret2 |= (__varword)((unsigned char *) list.raddr)[13] << 40;
          if (list.rsize >= 15)
            iret2 |= (__varword)((unsigned char *) list.raddr)[14] << 48;
          if (list.rsize >= 16)
            iret2 |= (__varword)((unsigned char *) list.raddr)[15] << 56;
        }
        #else /* Optimized: fewer conditional jumps, fewer memory accesses */
        uintptr_t count = list.rsize; /* > 0, ≤ 2*sizeof(__varword) */
        __varword* wordaddr = (__varword*)((uintptr_t)list.raddr & ~(uintptr_t)(sizeof(__varword)-1));
        uintptr_t start_offset = (uintptr_t)list.raddr & (uintptr_t)(sizeof(__varword)-1); /* ≥ 0, < sizeof(__varword) */
        uintptr_t end_offset = start_offset + count; /* > 0, < 3*sizeof(__varword) */
        if (count <= sizeof(__varword)) {
          /* Assign iret. */
          if (end_offset <= sizeof(__varword)) {
            /* 0 < end_offset ≤ sizeof(__varword) */
            __varword mask0 = ((__varword)2 << (end_offset*8-1)) - 1;
            iret = (wordaddr[0] & mask0) >> (start_offset*8);
          } else {
            /* sizeof(__varword) < end_offset < 2*sizeof(__varword), start_offset > 0 */
            __varword mask1 = ((__varword)2 << (end_offset*8-sizeof(__varword)*8-1)) - 1;
            iret = (wordaddr[0] >> (start_offset*8)) | ((wordaddr[1] & mask1) << (sizeof(__varword)*8-start_offset*8));
          }
        } else {
          /* Assign iret, iret2. */
          if (end_offset <= 2*sizeof(__varword)) {
            /* sizeof(__varword) < end_offset ≤ 2*sizeof(__varword) */
            __varword mask1 = ((__varword)2 << (end_offset*8-sizeof(__varword)*8-1)) - 1;
            iret = (wordaddr[0] >> (start_offset*8)) | ((wordaddr[1] & mask1) << (sizeof(__varword)*4-start_offset*4) << (sizeof(__varword)*4-start_offset*4));
            iret2 = (wordaddr[1] & mask1) >> (start_offset*8);
          } else {
            /* 2*sizeof(__varword) < end_offset < 3*sizeof(__varword), start_offset > 0 */
            __varword mask2 = ((__varword)2 << (end_offset*8-2*sizeof(__varword)*8-1)) - 1;
            iret = (wordaddr[0] >> (start_offset*8)) | (wordaddr[1] << (sizeof(__varword)*8-start_offset*8));
            iret2 = (wordaddr[1] >> (start_offset*8)) | ((wordaddr[2] & mask2) << (sizeof(__varword)*8-start_offset*8));
          }
        }
        #endif
      }
    }
  }
}

#ifdef REENTRANT
__vacall_r_t
callback_get_receiver (void)
{
  return (__vacall_r_t)(void*)&callback_receiver;
}
#endif
