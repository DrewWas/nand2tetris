# Unit 4.1: Machine Languages: Overview



In the past two weeks, we have built an ALU and a memory hierarchy, now we just have to combine them to create the computer 

However, we're going to postpone that till next week

This week, we're going to look at the computer we want to build from a users POV 
	- What can we build with it?
	- What are its specifications?

Then, once we have looked into it and played around with it (this week/unit), we will build it (next week/unit)



* Computers can do lots of things
	- Most machines can only do one thing

	- Universality: Same hardware can run many different softwares
		- Originally though of by Turing (Turing machine)

	- A Universal Turing machine is the simplest hardware that can run all possible programs
		- This one machine can simulate any possible machine/computer


	- Von Neumann put this theoretical idea into practice with the Von Neumann Architecture 
		- *** He formulated a practical architecture for a general computing machine ***



* How does a Stored Program Computer actually work (Von Neumann Architecture)?

	- On a high level, we have: Input, Memory, CPU, and output

	- Within the memory, however, we have to store our program
	- We also have to store data 


* How does the static hardware perform operations according to a program

	- Each program has a sequence of instructions (each instruction is coded in binary)
	- Hardware goes instruction by instruction and executes
		- Different instructions will cause the hardware to produce different things



* How do we specify instructions?
* How do we know which instruction to perform at any given time?
* How do we tell the hardware what memory to operate on?


* Once we have this machine language specification, we can tell the computer whatever it is that we want it to do
	- This means machine language is a programming language (but a really bad one)
		- Very hard for humans to write code in these languages

	- Humans write programs in high level languages (python, java, c, etc.)

	- Automatic programs called compilers translate this high level program into machine language (pretty sure its actually
	  converted to assembly first via an assembler but oh well)
		- This machine language actually tells the computer what to do 






* Instructions in machine lang are always sequences of bits 


	- Ex: | 0100010 | 0011 | 0010 |
                 Add       R3   & R2


	- Interpretation 1: The 'symbolic form' doesn't really exist but is just a convenient mnemonic to present machine language
	  instructions to humans 

	- Interpretation 2: We will allow humans to write machine language instructions using assembly language and will have an
	  'Assembler' program to convert it to bit form




# Unit 4.2: Machine Languages Elements

* There are multiple machine languages (similar to how there are multiple programming languages)

	- Different computer architectures and processor families hvae their own specific machine languages 
		- x86 and x86-64 are common machine languages (used by intel, amd, and apple)
		- ARM is another popular machine language



* Machine language is the interface between hardware and software

 * What types of operations can the hardware perform

	- Each machine language defines a set of operations 
		- Ex: Arithmatic Operations, Logical Operations, Flow Control Operations (when to 'jump')

	
	- Machine languages differ in thier set of operations
		- Some may include division as a basic operations and some may not
			- ^ Hardware vs Software tradeoff ^

		- What datatypes can the hardware access primitivley (16 bits vs 64 bits)

		- Does hardware directly support floating point nums?



* How do we decide what data to work on?

	- Accessing memory is an expensive operation
		- If memory is large, it takes a lot of bits just to specify location
		- Getting the memory contents into the CPU takes a lot of time relative to pure CPU time

	- Therefore, we create a memory hierarchy to prioritze certain types/regions of memory


* Memory Hierarchy

	- Instead of having one large block of memory, we have a whole sequence of memories that get bigger and bigger
	
	- The smallest memories are very easy to access
		- Less bits to specify location
		- Because there are few of them we can get memory back quicker  


	- Then there are slightly larger memories (called Cache)
	- Then even larger (Main memory)
	- Then even large (Disk)

	- At each stage, the memory gets physically further from the CPU on the chip
		- So that the more important memory has a faster fetch time


	- The smallest memory are individual registers that reside *inside* the CPU



* Registers

	- CPUs usually contain a few, easily accessed, "registers"
		- Acessing these registers is super cheap (time and # of bits for address)

	- Their number and functions are a central part of the machine language 


	- What do these registers do?
		- Hold data 
		- Use them as addresses	
			- Which part of the larger memory do we want to access




* Input / Output

	- One way to integrate input / ouput devices into the computer is to incorporate them into memory
		- The registers of the mouses last position is fed into the main computer memory and can be accessed so the OS can draw
		  the mouse at the correct coordinate


* Flow Control 
	
	- How do we tell the hardware which instruction to execute next?

	- Usually the CPU executes machine instructions in sequence (one after another)
		- Sometimes tho, we need to jump unconditionally to another location
		- Somtimes we need to jump only if some condition is met 




