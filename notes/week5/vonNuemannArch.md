# Unit 5.1: Von Neumann Architecture


* This week we are going to actually plug together all the parts we have built thus far to create the HACK computer
	- ALU
	- Memory/RAM
	- Few extra logic gates (from week 1)



* General architecture
	
	- Input goes into memory
	- Memory goes *into* CPU and can store memory *from* RAM
	- CPU can *read* memory from RAM and *write* memory to RAM
	- CPU eventually produces some output


	- Memory has to store both data from computations/needed for the program AND the data representing the instructions


* CPU
	- Generally composed of 2 main ingredients
		- ALU
		- A bunch of Registers


* CPU Information Flow
	- There are generally 3 types of information that pass through the system
		- Control
		- Address
		- Data


	- The control bus takes inormation from the program part of memory and tells each part of the system what to do at each particular point

	- The address bus specifies what instruction we are on and/or where in the memory necessary data is located

	- The data bus (Ex: Numbers that need to be added) takes numbers/values being computed in the program and stores them in registers in the
	  CPU (or straight into the CPU)
		- The data bus also can take output from the CPU and store it back into the CPU registers or RAM




* ALU

	- All it does is take in 2 numbers and add, subtract, perform logical operations, etc.
		- Takes information from the Data Bus 
		- Feeds output back into the Data Bus
			- Which then has paths that *can* take it back into the memory and/or registers


		- Also connected to the control bus
			- Control bus specifies which type of operations the ALU performs	

			- Output of ALU *also* has to feed back into control bus (Ex: You may want to perform different operations depending on
			  the ALU output --> if statement)



	- The ALU loads information from the Data Bus and manipulates it using the Control bits




* Data Registers

	- We store intermediate results in the registers

	- Can store data from data bus 
	- Can feed data from registers *back* into data bus (where they can then be taken straight to the ALU)

	
	- Some registers are used to specifiy addresses
		- Registers are connected to address bus which can fetch memory from the address held in the register



* Memory

	- We always need to specify which address in the memory we will be working with
		- Specified by the address bus

	- Once we have the right memory address, we need to be able to read/write to it, therefore:
		- * Data Bus is connected to RAM 


	- Within the RAM, there is both a 1.) Data Memory and 2.) Program Memory

		- The Data Memory must be connected to the address bus so that the CPU can specify where the register is within the RAM that
		  holds the memory it needs for the next instruction


		- The Program Memory is also connected to the address bus so that the correct instruction within the Program can be accessed
			- We need to be able to put in the address bus to the program memory and get back the correct instruction

		- The Program Memory has to also be connected to the control bus as the program instruction tells the rest of the system what to
		  do



















