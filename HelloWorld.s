.global _start

_start: mov     X0, #1;
        ldr     X1, =helloworld;
        mov     X2, #13;
        mov     X8, #64;
        svc     0;

        mov     X0, #0;
        mov     X8, #93;
        svc     0;

.data
helloworld:     .ascii "Hello World!\n";
