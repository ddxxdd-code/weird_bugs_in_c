guess_number`main:
guess_number[0x100003e10] <+0>:   pushq  %rbp
guess_number[0x100003e11] <+1>:   movq   %rsp, %rbp
guess_number[0x100003e14] <+4>:   subq   $0x50, %rsp
guess_number[0x100003e18] <+8>:   movl   $0x0, -0x4(%rbp)
guess_number[0x100003e1f] <+15>:  movl   %edi, -0x8(%rbp)
guess_number[0x100003e22] <+18>:  movq   %rsi, -0x10(%rbp)
guess_number[0x100003e26] <+22>:  leaq   0x10b(%rip), %rdi         ; "Please input your number:"
guess_number[0x100003e2d] <+29>:  movb   $0x0, %al
guess_number[0x100003e2f] <+31>:  callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003e34] <+36>:  leaq   0x117(%rip), %rdi         ; "%d"
guess_number[0x100003e3b] <+43>:  leaq   -0x18(%rbp), %rsi
guess_number[0x100003e3f] <+47>:  movl   %eax, -0x28(%rbp)
guess_number[0x100003e42] <+50>:  movb   $0x0, %al
guess_number[0x100003e44] <+52>:  callq  0x100003f0e               ; symbol stub for: scanf
guess_number[0x100003e49] <+57>:  movl   -0x18(%rbp), %esi
guess_number[0x100003e4c] <+60>:  leaq   0x102(%rip), %rdi         ; "target: %d\n"
guess_number[0x100003e53] <+67>:  movl   %eax, -0x2c(%rbp)
guess_number[0x100003e56] <+70>:  movb   $0x0, %al
guess_number[0x100003e58] <+72>:  callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003e5d] <+77>:  leaq   0xfd(%rip), %rdi          ; "Please indicate your mode(M for manually, A for auto):"
guess_number[0x100003e64] <+84>:  movl   %eax, -0x30(%rbp)
guess_number[0x100003e67] <+87>:  movb   $0x0, %al
guess_number[0x100003e69] <+89>:  callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003e6e] <+94>:  leaq   0x123(%rip), %rdi         ; "%s"
guess_number[0x100003e75] <+101>: leaq   -0x11(%rbp), %rsi
guess_number[0x100003e79] <+105>: movl   %eax, -0x34(%rbp)
guess_number[0x100003e7c] <+108>: movb   $0x0, %al
guess_number[0x100003e7e] <+110>: callq  0x100003f0e               ; symbol stub for: scanf
guess_number[0x100003e83] <+115>: movsbl -0x11(%rbp), %esi
guess_number[0x100003e87] <+119>: leaq   0x10d(%rip), %rdi         ; "[%c]\n"
guess_number[0x100003e8e] <+126>: movl   %eax, -0x38(%rbp)
guess_number[0x100003e91] <+129>: movb   $0x0, %al
guess_number[0x100003e93] <+131>: callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003e98] <+136>: movl   -0x18(%rbp), %esi
guess_number[0x100003e9b] <+139>: leaq   0xb3(%rip), %rdi          ; "target: %d\n"
guess_number[0x100003ea2] <+146>: movl   %eax, -0x3c(%rbp)
guess_number[0x100003ea5] <+149>: movb   $0x0, %al
guess_number[0x100003ea7] <+151>: callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003eac] <+156>: movsbl -0x11(%rbp), %esi
guess_number[0x100003eb0] <+160>: leaq   0xea(%rip), %rdi          ; "Mode is:[%c]\n"
guess_number[0x100003eb7] <+167>: movl   %eax, -0x40(%rbp)
guess_number[0x100003eba] <+170>: movb   $0x0, %al
guess_number[0x100003ebc] <+172>: callq  0x100003f08               ; symbol stub for: printf
guess_number[0x100003ec1] <+177>: xorl   %ecx, %ecx
guess_number[0x100003ec3] <+179>: movl   %eax, -0x44(%rbp)
guess_number[0x100003ec6] <+182>: movl   %ecx, %eax
guess_number[0x100003ec8] <+184>: addq   $0x50, %rsp
guess_number[0x100003ecc] <+188>: popq   %rbp
guess_number[0x100003ecd] <+189>: retq
guess_number[0x100003ece] <+190>: nop
