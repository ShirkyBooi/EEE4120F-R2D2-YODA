main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 376
        mov     DWORD PTR [rbp-80], 1
        mov     DWORD PTR [rbp-76], 0
        mov     DWORD PTR [rbp-72], 0
        mov     DWORD PTR [rbp-68], 1
        mov     DWORD PTR [rbp-64], 0
        mov     DWORD PTR [rbp-60], 1
        mov     DWORD PTR [rbp-56], 0
        mov     DWORD PTR [rbp-52], 1
        mov     DWORD PTR [rbp-48], 1
        mov     DWORD PTR [rbp-44], 1
        mov     DWORD PTR [rbp-40], 1
        mov     DWORD PTR [rbp-36], 1
        mov     DWORD PTR [rbp-32], 1
        mov     DWORD PTR [rbp-28], 0
        mov     DWORD PTR [rbp-24], 0
        mov     DWORD PTR [rbp-20], 1
        mov     QWORD PTR [rbp-144], 0
        mov     QWORD PTR [rbp-136], 0
        mov     QWORD PTR [rbp-128], 0
        mov     QWORD PTR [rbp-120], 0
        mov     QWORD PTR [rbp-112], 0
        mov     QWORD PTR [rbp-104], 0
        mov     QWORD PTR [rbp-96], 0
        mov     QWORD PTR [rbp-88], 0
        mov     QWORD PTR [rbp-208], 0
        mov     QWORD PTR [rbp-200], 0
        mov     QWORD PTR [rbp-192], 0
        mov     QWORD PTR [rbp-184], 0
        mov     QWORD PTR [rbp-176], 0
        mov     QWORD PTR [rbp-168], 0
        mov     QWORD PTR [rbp-160], 0
        mov     QWORD PTR [rbp-152], 0
        mov     QWORD PTR [rbp-272], 0
        mov     QWORD PTR [rbp-264], 0
        mov     QWORD PTR [rbp-256], 0
        mov     QWORD PTR [rbp-248], 0
        mov     QWORD PTR [rbp-240], 0
        mov     QWORD PTR [rbp-232], 0
        mov     QWORD PTR [rbp-224], 0
        mov     QWORD PTR [rbp-216], 0
        mov     QWORD PTR [rbp-336], 0
        mov     QWORD PTR [rbp-328], 0
        mov     QWORD PTR [rbp-320], 0
        mov     QWORD PTR [rbp-312], 0
        mov     QWORD PTR [rbp-304], 0
        mov     QWORD PTR [rbp-296], 0
        mov     QWORD PTR [rbp-288], 0
        mov     QWORD PTR [rbp-280], 0
        mov     QWORD PTR [rbp-400], 0
        mov     QWORD PTR [rbp-392], 0
        mov     QWORD PTR [rbp-384], 0
        mov     QWORD PTR [rbp-376], 0
        mov     QWORD PTR [rbp-368], 0
        mov     QWORD PTR [rbp-360], 0
        mov     QWORD PTR [rbp-352], 0
        mov     QWORD PTR [rbp-344], 0
        mov     DWORD PTR [rbp-496], 0
        mov     DWORD PTR [rbp-492], 1
        mov     DWORD PTR [rbp-488], 3
        mov     DWORD PTR [rbp-484], 3
        mov     DWORD PTR [rbp-480], 5
        mov     DWORD PTR [rbp-476], 5
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-80+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-464+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L3
        mov     eax, DWORD PTR [rbp-448]
        lea     edx, [rax+rax]
        mov     eax, DWORD PTR [rbp-444]
        add     eax, edx
        lea     edx, [rax+rax]
        mov     eax, DWORD PTR [rbp-440]
        add     eax, edx
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rbp-496+rax*4]
        mov     DWORD PTR [rbp-8], eax
        cmp     DWORD PTR [rbp-8], 1
        jne     .L4
        mov     DWORD PTR [rbp-4], 0
        jmp     .L5
.L6:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-464+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-144+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L5:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L6
.L4:
        cmp     DWORD PTR [rbp-8], 2
        jne     .L7
        mov     DWORD PTR [rbp-4], 0
        jmp     .L8
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-464+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-208+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L8:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L9
.L7:
        cmp     DWORD PTR [rbp-8], 3
        jne     .L10
        mov     DWORD PTR [rbp-4], 0
        jmp     .L11
.L12:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-464+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-272+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L11:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L12
.L10:
        cmp     DWORD PTR [rbp-8], 4
        jne     .L13
        mov     DWORD PTR [rbp-4], 0
        jmp     .L14
.L15:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-464+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-336+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L14:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L15
.L13:
        cmp     DWORD PTR [rbp-8], 5
        jne     .L16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L17
.L18:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     edx, DWORD PTR [rbp-464+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     DWORD PTR [rbp-400+rax*4], edx
        add     DWORD PTR [rbp-4], 1
.L17:
        cmp     DWORD PTR [rbp-4], 15
        jle     .L18
.L16:
        mov     eax, 0
        leave
        ret
