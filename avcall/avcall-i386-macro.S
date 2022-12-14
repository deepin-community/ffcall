#include "asm-i386.h"
	TEXT()
	ALIGN(2)
	P2ALIGN(2,3)
GLOBL(C(avcall_call))
	DECLARE_FUNCTION(avcall_call)
FUNBEGIN(avcall_call)
	INSN1(push,l	,R(ebp))
	INSN2(mov,l	,R(esp), R(ebp))
	INSN1(push,l	,R(edi))
	INSN1(push,l	,R(esi))
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(eax))
	INSN2(mov,l	,X4 MEM_DISP(eax,20), R(edx))
	INSN2(mov,l	,X4 MEM_DISP(eax,24), R(eax))
	INSN2(sub,l	,R(eax), R(edx))
	INSN2(sar,l	,NUM(2), R(edx))
	INSN2(xor,l	,R(esi), R(esi))
	INSN2(sub,l	,NUM(1024), R(esp))
	INSN2(cmp,l	,R(edx), R(esi))
	INSN2(mov,l	,R(esp), R(edi))
	INSN1(jge,_	,L(45))
	INSN2(mov,l	,R(eax), R(ecx))
	P2ALIGN(2,3)
L(6):
	INSN2(mov,l	,X4 MEM_SHINDEX(ecx,esi,4), R(eax))
	INSN2(mov,l	,R(eax),X4 MEM_SHINDEX(edi,esi,4))
	INSN1(inc,l	,R(esi))
	INSN2(cmp,l	,R(edx), R(esi))
	INSN1(jl,_	,L(6))
L(45):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(edx))
	INSN2(mov,l	,X4 MEM_DISP(edx,12), R(eax))
	INSN2(cmp,l	,NUM(13), R(eax))
	INSN1(je,_	,L(55))
	INSN2(cmp,l	,NUM(14), R(eax))
	INSN1(je,_	,L(56))
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN1(call,_	,INDIR(X4 MEM_DISP(ecx,4)))
	INSN2(mov,l	,R(eax), R(esi))
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(eax))
	INSN2(mov,l	,X4 MEM_DISP(eax,12), R(ecx))
	INSN2(cmp,l	,NUM(1), R(ecx))
	INSN1(je,_	,L(8))
	INSN2(cmp,l	,NUM(2), R(ecx))
	INSN1(je,_	,L(57))
	INSN2(cmp,l	,NUM(3), R(ecx))
	INSN1(je,_	,L(53))
	INSN2(cmp,l	,NUM(4), R(ecx))
	INSN1(je,_	,L(53))
	INSN2(cmp,l	,NUM(5), R(ecx))
	INSN1(je,_	,L(54))
	INSN2(cmp,l	,NUM(6), R(ecx))
	INSN1(je,_	,L(58))
	INSN2(cmp,l	,NUM(7), R(ecx))
	INSN1(je,_	,L(52))
	INSN2(cmp,l	,NUM(8), R(ecx))
	INSN1(je,_	,L(46))
	INSN2(cmp,l	,NUM(9), R(ecx))
	INSN1(je,_	,L(52))
	INSN2(cmp,l	,NUM(10), R(ecx))
	INSN1(je,_	,L(46))
	INSN2(lea,l	,X4 MEM_DISP(ecx,-11), R(eax))
	INSN2(cmp,l	,NUM(1), R(eax))
	INSN1(jbe,_	,L(47))
	INSN2(cmp,l	,NUM(15), R(ecx))
	INSN1(je,_	,L(46))
	INSN2(cmp,l	,NUM(16), R(ecx))
	INSN1(je,_	,L(59))
	P2ALIGN(2,3)
L(8):
	INSN2(lea,l	,X4 MEM_DISP(ebp,-8), R(esp))
	INSN1(pop,l	,R(esi))
	INSN2(xor,l	,R(eax), R(eax))
	INSN1(pop,l	,R(edi))
	leave
	ret
L(59):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN2(test,b	,NUM(2),X1 MEM_DISP(ecx,1))
	INSN1(je,_	,L(8))
	INSN2(mov,l	,X4 MEM_DISP(ecx,16), R(eax))
	INSN2(cmp,l	,NUM(1), R(eax))
	INSN1(je,_	,L(50))
	INSN2(cmp,l	,NUM(2), R(eax))
	INSN1(je,_	,L(54))
	INSN2(cmp,l	,NUM(4), R(eax))
	INSN1(je,_	,L(46))
	INSN2(cmp,l	,NUM(8), R(eax))
	INSN1(jne,_	,L(8))
L(47):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN2(mov,l	,X4 MEM_DISP(ecx,8), R(eax))
	INSN2(mov,l	,R(esi),X4 MEM(eax))
	INSN2(mov,l	,R(edx),X4 MEM_DISP(eax,4))
	INSN1(jmp,_	,L(8))
L(46):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(edx))
	INSN2(mov,l	,X4 MEM_DISP(edx,8), R(eax))
L(48):
	INSN2(mov,l	,R(esi),X4 MEM(eax))
	INSN1(jmp,_	,L(8))
L(54):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN2(mov,l	,X4 MEM_DISP(ecx,8), R(eax))
L(49):
	INSN2(mov,w	,R(si),X2 MEM(eax))
	INSN1(jmp,_	,L(8))
L(50):
	INSN2(mov,l	,X4 MEM_DISP(ecx,8), R(eax))
L(51):
	INSN2(mov,l	,R(esi), R(edx))
	INSN2(mov,b	,R(dl),X1 MEM(eax))
	INSN1(jmp,_	,L(8))
L(52):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN2(mov,l	,X4 MEM_DISP(ecx,8), R(eax))
	INSN1(jmp,_	,L(48))
L(58):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(edx))
	INSN2(mov,l	,X4 MEM_DISP(edx,8), R(eax))
	INSN1(jmp,_	,L(49))
L(53):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN1(jmp,_	,L(50))
L(57):
	INSN2(mov,l	,X4 MEM_DISP(eax,8), R(eax))
	INSN1(jmp,_	,L(51))
L(56):
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(eax))
	INSN1(call,_	,INDIR(X4 MEM_DISP(eax,4)))
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(edx))
	INSN2(mov,l	,X4 MEM_DISP(edx,8), R(eax))
	INSN1(fstp,l	,X8 MEM(eax))
	INSN1(jmp,_	,L(8))
L(55):
	INSN1(call,_	,INDIR(X4 MEM_DISP(edx,4)))
	INSN2(mov,l	,X4 MEM_DISP(ebp,8), R(ecx))
	INSN2(mov,l	,X4 MEM_DISP(ecx,8), R(eax))
	INSN1(fstp,s	,X4 MEM(eax))
	INSN1(jmp,_	,L(8))
L(fe1):
	FUNEND(avcall_call,L(fe1)-avcall_call)

#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
