# Unit 5.3: Central Processing Unit

* The CPU is the center piece of every computer hardware architecture
	- 'The hub of computation'


* The HACK CPU
	- 16-bit processor
		- Designed to:
			- Execute the current instruction
			- Figure out which instruction to execute next


* Interface

	- In the HACK computer, the CPU is connected to both the Instruction Memory AND the Data Memory (Harvard
	  Architecture)


	- CPU Inputs:
		- Data Value (16 bits)
			- Value of the currently selected Data Memory register
			- Value that the CPU is going to operate on 
		- Instruction (16 bits)
			- Value of the currently selected Program/Instruction Memory register
		- Reset bit (1 bit)
			- Will be discussed later
		- Each input comes from a completely different source
		- At every single clock cycle, there is always a 'selected' register in both the data and program memories
		  (although that does not mean that the data in the data register MUST be used... On the other hand I would
		   have to assume that the instruction in the instruction memory is going to be used at every clock cycle)




	- CPU Outputs:
		- If the CPU wants to write to the data memory, it has to specify 3 different things:
			- What it is we want to write (outM)
			- Write to memory? (T/F) (writeM)
				- Load bit that enables the write to memory (or blocks it)
			- Where (what register) to write it (addressM)


		- All these outputs go to the Data Memory


	- Address of the next instruction (PC)
		- Goes to the Instruction Memory




* Implementation

	- All our CPU (and all CPUs fundamentally are) is an ALU, some registers (including the program counter) and a few
	  extra logic gates (multiplexors)


	- The general architecture for the CPU was more or less kinda just given to us, and all we have to do is piece
	  together the control bit logic 
		- I guess we could just ignore the given diagram and try to build it ourselves... IDK, we'll worry about
		  that when we get to the actual project 


	- Computer architecture is an orchestra

	- The overall CPU architecture can be broken down into many different parts
		- Instruction handling
		- ALU operation
		- Control




* Instruction Handling

	- This part of the CPU consists of 
		- Input from the Instruction Memory
		- A multiplexor which takes the Instruction Memory and ALU output and a control bit as sel
		- The 'A' register which takes in the output of the multiplexor and has a control bit 'c'



	- The Instruction Memory can output A or C instructions


	- CPU handling of an A instruction:
		- Decode the instruction into op-code and the 15-bit value
			- The first bit (from the left) of the bus is the op-code (0 for A, 1 for C)

		- Stores value in the A register
		- Outputs the value from the A register via the addressM bus 


	- CPU handling of a C instruction:
		- First bit (from the left) is a 1 (op-code)

		- The bus of the C instruction contains different 'sections' which correspond to different
		  sub-instructions


		- The first thing to do with the C instruction is to decode it
			- The ALU takes the 16-bit value and decodes it into 4 different fields 
				- Op-code
				- ALU control bits
				- Destination load bits
				- Jump bits

	- Because there is a multiplexor that precedes the A register, which is connected to both the output of the
	  instruction memory and the ALU output, we have to decide whether we want the A register to hold the
	  instruction memory output, or the ALU output (so which do we want in which situations??)

		- If it is a C instruction, we want the A register to hold the ALU output (op-code = 1)
		- If it is an A instruction, we want the A register to hold the Instruction Memory output (op-code = 0)

		- Therefore, the sel of this multiplexor should be the first bit (from left) of the instruction memory
		  (you could probably do it other ways, but this would for sure work... Assuming the ALU out and
		  instruct mem out are mapped to the right multiplexor inputs)



* ALU Operation

	- The ALU is a combinational chip (it always computes something)
		- There is always some input coming in and some output going out

	- ALU takes in inputs from both:
		- D register
		- A or M register (multiplexor that takes control bit from instruction)

	- How does the ALU know what to do?
		- The ALU has 6 control bits which specify which operation we are going to carry out
		- These bits come from the instructions


	- ALU data output
		- The ALU data output is the result of the ALU calculation
		- It is fed simultaneously to the:
			- D-register (straight up)
				- All the D register takes in is the previous ALU output and a control bit
			- A-register (via an intermediary multiplexor)
			- M-register (outside the 'interface' of the chip)


		- The same ALU output is knocking on 3 different doors
			- This doesn't automatically mean that the doors will open
				- This is handled by the 'destination bits'


		- Destination bits
			- Which register actually updates to the ALU output is determined by the destination bits
			- There are 3 destination bits (for D,A, and M registers)
			- If all 3 destination bits are 0, then neither the D,A, or M registers update
			- If all 3 destination bits are 1, then the D,A, and M registers update to the ALU output


	- Outputs
		- We have to remember in addition to its 16-bit output, the ALU also outputs 2 control bits
		
		- These two bits document whether the main ALU output is either
			- Negative
			- Zero
		
		- These two bits are very important for the control logic of the rest of the CPU


* CPU Reset Input

	- One of the inputs into the CPU is the Reset Input
	- The idea of the reset button is that, the HACK computer will alrady be loaded with some program and, once you
	  press the Reset button, the program starts running 

	- When you press it agian (without changing the program memory), the same program will run from the start,
	  regardless of where it was when you originally pressed it

	- Everytime you press the 'Reset Button', the program loaded in the program memory will begin to run from its
	  first instruction



* Control

	- The Control section of the CPU takes in the instruction from the instruction memory and the reset button

	- The Control section is only concerned with C instructions, and of the C instructions, the 3 JUMP bits
		- The 3 JUMP bits represent conditional AND unconditional GO-TOs (within HACK assembly)


	- The main work-horse of the CPU control is the Program Counter (PC)
		- The PC is a single register

		- The PC needs to ALWAYS emit the *address* of the next instruction in the program/instruction memory
	
		- To start/restart the programs execution, we have to set PC = 0 (relative to where in instruction memory the
		  program starts)

		- If there is no jump, then the PC should += 1 (increment itself by 1)

		- If there is an unconditional GO-TO, then PC = A
			- The value will alrady be in the A register because...
			- The programmer has to specifiy the destination in the line before a JMP
			  statement (think about programming in HACK asm)

		- Conditional GO-TO
			- If the condition = True, GO-TO |  else PC += 1


