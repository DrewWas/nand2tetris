# Unit 5.2: The Fetch-Execution Cycle



* All a computer does is execute one instruction after another
	- First, fetch the instruction to execute
	- Then, execute
	- Repeat

	- This is *all* a CPU does



* Fetching

	- How do you get the next instruction that needs to be executed
		- Where is it located 
			- In the Program Memory at the address that is specified by the program counter

	- We need to put the location of the next instruction into the 'address [bus]' of the program memory
	- Get the instruction code itself by reading the memory contents at that location


	- How do we put the address of the next instruction into the address input of the Program Memory
		- Must be stored in ~some~ register that is usually called the *Program Counter*
		- Program Counter: Register that stores address of next instruction in program memory



* The Program Counter

	- When we need to go to the next instruction to jump to a new instruction, we must manipulate the program counter

	- The output of the program counter feeds into the address specification of the Program Memory
		- Address specification says: Go get the instruction at this address
		- Program Counter says: Hey Address Specification, this is the address the CPU wants


	- The output of the program memory is the instruction to-be executed

	- The instruction code has all the specifics of what to execute

	- * The program memory just holds a bunch of instruction codes at different addresses * 



* Execution

	- The instruction code (output of program memory) specifies "what to do"
		- Which arithmetic or logical operation to do
		- What memory to access (read/write)
		- If/where to jump for the next instruction


	- Often, different subsets of the bits control different aspects of the operation

	- Executing the operation involves also accessing registers and/or data memory


	- Once we have the correct instruction code from the fetch, we feed it into the control bus 
	- The control bus controls everything
		- Tells the ALU what instruction to compute (add, subtract, and, or, etc.)
		- Tells where the Data pieces come from (Data memory or registers and where) 


	- In the next unit, we will see how we actually control each part of the system from the instruction bits 



* Fetch-Execute Clash

	- Because there is only one memory that houses both Data Memory AND Program Memory, how do we access the addresses
	  of both program and data memory in the fetch cycle

		- We simply do one after another
		- There is a multiplexor that feeds into the address of the memory
			- We use the multiplexor such that, on the fetch cycle, the multiplexor 'points' to the program
			  memory which therefore outputs the next instruction. Then on the execution cycle, the mulitplexor
			  flips to 'point' to the data memory to grab any needed data
		
			- What if you need to grab multiple pieces of data in the same instruction?
				- You can't. Grabbing more than one piece of data would constitude a new instruction (think
				  in terms of asm)


	- Now, the memory output will be data when executing and instructions while fetching

	- The sel of the multiplexor takes a bit from the control bus 


	- On the fetch cycle, we load the instruction into an instruction register so that it can be remembered for the
	  execution cycle 

		- So now, during the execute cycle, the output of the memory will be data, but we still know what to do with
		  that data because we stored the instructions in the instruction register

		- The instruction register is updated on every fetch cycle


* Simpler Solution: Harvard Architecture

	- Variant of the Von Neumann Architecture
	
	- * Keep Program Memory and Data Memory in two seperate memory modules *
		- Therefore, each has its own address

	- Complication avoided and no need for the multiplexor and extra instruction register













