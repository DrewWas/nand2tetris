# Unit 3.5: Project 3 


* Project 3

	- Given
		- All chips from projects 1 and 2
		- The Data Flip Flop (DFF) gate



	- Build 
		- 1-bit register
		- 16-bit register
		- RAM8
		- RAM64
		- RAM512
		- RAM4k
		- RAM16k
		- Program Counter (PC)




* 1-bit register 
	- Can be built from a DFF and a multiplexor 
	- If load == 1, out = in (on next cycle)
	- If load == 0, out = out (doesn't change)




* 16-bit register
	- Just have to wire together 16, 1-bit registers



* 8 register RAM
	- Feed the in value to all registers simultaneously
	- Use Mux and DMux chips to select the right register



* 64 register RAM
	- Stack together 8, 8 register RAM chips


* 512 register RAM
	- Stack together 8, 64 register RAM chips


* 4k register RAM
	- Stack together 8, 512 register RAM chips


* 16k register RAM
	- Stack together 8, 4k register RAM chips


* Think of the RAMs address input as consisting of two fields 
	- One field can be used to select a RAM-part	
	- THe other field can be used to select a register within that RAM-part

	- Use Mux/DMux logic to implement this addressing scheme 



* Program Counter (PC)

	- Can be built from a register, an incrementor, and some logic gates




# Unit 3.6: Perspectives

* Flip Flop from NAND

	- The Flip Flop gate (DFF) can be made by linking two NAND gates together in a clever way (the output of each goes into one of
	  the inputs of the other one)

		- However, we will not get into it in this course and just take the DFF as a black box 

		- There is actually still a lot more shit you have to do to make it work corectly with the clock and everything else


	- Flip Flops can also be made from different types of circuits, it does not have to be made of NAND gates




* Other memory systems

	- Although there are other memory systems, RAM is the most important

		- Stores both data and instructions
		- RAM is volatile (dependent on power... When computer turns off, all RAM is lost)

	- Computers also use ROM (Read Only Memory)
		- Read Only (durr)
		- Non-Volatile (memory/data is saved regardless of if computer is powered on or not) (does not depend on external power
		  supply)

		- Where files are stored that have to run when the computer is first booted up (because otherwise how would the
		  computer read files that were deleted when it was turned off)


	- Flash Memory
		- Read and Write Memory
		- Non-Volatile 
		- Slow


	- Cache Memory
		- When actually building a computer, the memory will be a costly part of the whole system
		- The FASTER the memory, the more expensive it usually is 
		- The LARGER the memory, the more expensive it usually is 

		- Computer Architect is faced with trade-offs (More memory, Less processing power | Less memory, More processing power)

		- A good compromise is to have a large, cheap memory (likely slow), and a small, expensive fast memory
			- Now, make sure that data that is often needed by the processor is stored in this small, fast memory, and data
			  that is not used as often is stored in the large, cheap memory

		- The small, fast memorys that store high-use data and are located close to the CPU are called caches 

		- In modern computers, there are multiple levels of cache 







