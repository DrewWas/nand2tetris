# Unit 5.4: The HACK Computer

* This unit will focus on the overall HACK computer architecture (I/O, Memory, and CPU)


* The CPU is the centerpiece of most computer architectures

	- Our CPU operates according to the HACK asm lang

	- If the HACK asm lang instructions reference the D and A registers (D and/or A only), then the CPU will
	  manipulate the respective D and/or A registers that reside WITHIN the CPU

	- If the instruction is @x (A instruction), then x is stored in the A register (emitted by addressM) 

	- If the right hand side of the instruction contains M, this value is read from inM 
		- The CPU expects to see some input from the inM input pin to the CPU
		- The inM input pin says 'this input is supposed to contain the value of the currently selected Data
		  Memory Register

	- If the left hand side of the instruction contains M, then the ALU output is emitted by outM, and the writeM
	  bit is asserted 
		- AKA --> The ALU output should be stored in the main memory



* How does the CPU handle jumps?

	- Ex:

	@100
	D = D - 1 ; JEQ

	- This program says, load A = 100 and M = RAM[100]
	- Then, set D -= 1, if == 0, Jump to RAM[100]


	- If reset == 0:
		- The CPU logic uses the instructions jump bits and the ALUs output to decide if there should be a jump
		- If there SHOULD be a jump, PC = value in A register
		- If there SHOULDN'T be a jump, PC += 1

		- The updated PC value is emitted by the PC

	- If reset == 1:
		- PC = 0, PC emits 0 (thus causing a program restart)


* Data Memory

	- The Data Memory is the area where we store all the data from the program

	- Within the Data Memory:
		- Addresses 0 - 16383 --> Data Memory
		- Addresses 16384 - 24575 --> Screen Memory Map (SMM)
		- Address 24576 --> Keyboard Memory Map (KMM/KBD)


	- Implementation:
		- This part of the memory (DM) is composed of 3 different sub memories/chips
			- A 16K memory to constitude the RAM
			- An 8K memory to constitude the SMM
			- A single 16-bit register to constitude the KMM/KBD
				- To read the keyboard, simply probe the output of the keyboard register (RAM[24576] or
				  KBD)



* Instruction Memory (ROM)

	- ??? If it's 'read only' memory, how do we write to it to change/update instruction from which we read ???

	- The Instruction Memory chip is designated as ROM32K 
		- ROM stands for Read Only Memory

	- In order to run programs on the computer, we first have to be able to *load* programs onto the computer

	- To run a program on the HACK computer
		- Load program into ROM (Instruction/Program Memory)
		- Press the reset button 
		- Program starts running

	- How do we save instructions in a text file to registers in the ROM
		- One idea is to 'plug in' ROM chips that are preprogrammed with programs (this is sorta how a lot of
		  games work... Think PS4s/Nintendos --> The disk/cartrige is the ROM) Then when you are done,
 		  physically take them out of the device

		- Another idea is to use hardware simulation
			- Programs are stored in text files
			- Loading the program loading is simulated by the built-in ROM chip (???)



	- ROM takes in 15-bit address bus (why not 16?... Whats the op-code for???) (maybe you only need 15 bit to
	  access all the memory locations

	- Output is a 16-bit instruction
		- Output is the 16-bit instruction contained in the register at the RAM address specified by the input
		- Ex: Input = 17 --> Output = ROM[17] (which will be an instruction)



	- *The input to the ROM is the Program Counter
		- It makes sense bc the PC tells what the next instruction is... So obv the input to the ROM is just
		  gonna be the PC
		- Also, the PC always starts at 0 and the reset button will reset PC to 0 which jumps the program back
		  to its start




*** Overall Architecture

	- The CPU is connected to the instruction memory (ROM)
		- The instruction input of the CPU is taken directly from the instruction memory (so we have a current
		  instruction to operate on)
	
		- In the process of executing this instruction, we are going to compute the address of the next instruction to
		  be fetched
			- This address is emitted from the PC and is looped back into the ROM, and the cycle continues 


	- The CPU output is connected to the data memory (RAM)
		- Connected with writeM (what data)
		- Connected with outM (do we save or do we not save)
		- Connected with addressM (if save, where?)
		- Extra output = PC and control bits



	- RAM has one output that maps back into the CPU as inM
		- We may want to do operations on data the we create via the original program	



