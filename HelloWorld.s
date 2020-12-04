/* Assembler program to print "Hello World" to stdout
 *
 * @param: X0-X2 - parameters to Linux function services
 * @param: X8 - Linux functio number
 */

// Provide program starting address
.global _start

// Setup the paramters to print hello world and the call linux to do it
_start: mov     X0, #1          // 1 = stdout
        ldr     X1, =helloworld // string to print
        mov     X2, #13         // length of our string
        mov     X8, #64         // Linux write system call
        svc     0;              // Call Linux to output the string

// Setup the parameters to exit the pgoram and then call linux to do it
        mov     X0, #0  // Use 0 return code
        mov     X8, #93 // Service code 93 terminates
        svc     0

.data
helloworld:     .ascii "Hello World!\n";
