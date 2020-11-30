# Notes on ARM architectures

## CPU Registers
ARM processor is based on a load-store architecture where there are two basic types of instructions:
1. INstructions that either loads memory onto register, or store data from register onto memory
2. Instructions that perform arithmetics or logical operations between two or more registers.

## Registers
There are 32 registers in total in ARM Architecture
-<strong> X0-X30</strong>: General purpose registers.
- <strong>SP, XZR</strong>: stack pointer, or zero registers depending on the context
- <strong>X30, LR</strong>: Link Registers. Avoid using this register is preferred
- <strong>PC</strong>: Program counter.
If discussing 32 bit in context, replace <strong>X</strong> as<strong>W</strong> as reference.

## Instruction format
Each ARM instructions are 32 bits, or 4 bytes, long. To specify a register, it requires 5 bits. Thus, if three registers are referenced, it requires 15 bits.

Each instructions that takes registers can either use the 32-bit <strong>W</strong>version or the 64-bit <strong>Z</strong> version. To specifiy which is the case, the high bit of each instruction specifies how we are view the registers. All registers in a single instruction need to be the same. You cannot mix <strong>W</strong> and <strong>Z</strong> registers.
Here are some of the terminologies for instructions:
<ul>
    <li><em>Bits</em>: If this is zero, then it indicates that the register is is 32-bit <strong>W</strong> version. If it is zero, then it indicates that it is 64-bit <strong>X</strong> version of register.</li>
    <li><em>Opcode</em>: Type of instruction</li>
    <li><em>Shift</em>: Shift specification</li>
    <li><em>Set Condition</em>: Indicate whether the instruction requires update on any conditional flags. If not, this is set to zero.</li>
    <li><em>Rm, Rn,</em>: Operand registers</li>
    <li><em>Rd</em>: Destination registers</li>
    <li><em>Imm5</em>: Immediate operand. Used to operate on a register instead of using different registers for addition or subtractions.</li>
</ul>

## Computer Memory
64-bit mode means:
<ul>
    <li>Memory addresses are specified using 64 bits</li>
    <li>The CPU registers are each 64 bits wide and perform 64-bit integer arithmetic.</li>
</ul>

## ARM instructions
The general way to specify Assembly instruction is:
```Assembly
label:  Opcode  operands
```
Label is optional and only required if yo uwant the instruction to be the target of a branch instruction. There are few different opcodes and operands, which are listed on ARM Manual.

