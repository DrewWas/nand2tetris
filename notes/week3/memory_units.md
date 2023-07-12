# Unit 3.3: Memory Units 


* What is Memory
	- In Computer Architecture, when we say 'memory' we mean many different things
		- Main Memory: RAM, DRAM, etc.
			- Memory that lives 'inside' the computer and is hardwired into the computers motherboard

		- Secondary Memory: Disks

		- Volatile / Non-Volatile
			- Volatile memory stores data when a computer is on, but erases it when the computer loses power 
				- RAM, Cache memory, etc.
			- Non-Volatile memory stores data regardless of power input
				- ROM (Read Only Memory), storage disks, hard discs, etc. 


	- RAM (Random Access Memory) stores both Data for/from programs as well as the Instructions needed to carry out that program



* The most basic memory element: Register
	- Last unit we created a 1-bit register
	
	- It is not hard to imagine how we could combine multiple of these registers to create an n-bit register
		- Because we are building a 16-bit computer, we will build 16-bit registers
		- Generally, (always really, as far as I can tell), the processor and registers should be the same bit length (aka word
		  width, w)

	- Register's State: The value currently stored in the register


* Register Write Logic:

	- To set register = n
		- set in = n
		- set load = 1

	- Result:
		- Register state becomes n
		- From the next cycle on, out emits n until it is updated

	- Once we implement read logic I believe we will have a turing complete computer (I'm prob wrong tho)



* RAM and RAM Abstractions

	- RAM should be thought of as a sequence of addressable registers 
		- Every register has an address (0, n - 1) for n registers

	- At any given point of time, only ONE register in the RAM is selected
		- At every given point of time, we have to specify which register it is we want to operate on
		- Which is the register we want to read from OR which is the register we want to write to 

	- Given n registers, we need an address input of k bits
		- Where k = log_2(n)
		- Ex: 8 registers --> k = 3
		- Ex: 16 registers --> k = 4


	- Output (out / w / word width) = 16 bits (same as registers and ALU)

	- This is a sequential chip that is dependent on the clock. Only 1 operation at a time in a linear order



* RAM Read Logic
	
	- To read register i:
		- set address = i
		- out --> emits the state of register i
			- (are we gonna have to implement this or ...)



* RAM Read then Write Logic

	- To set register i to v
		- set address = i
		- set in = v 
		- set load = 1


	- Result
		- The state of register i becomes v
		- From the NEXT CYCLE FORWARD, out emits v



* In this course, we are going to build a family of 16-bit RAM chips 
	- All will have the same generic architecture

	- RAM8 (8 registers, k = 3)
	- RAM64 (64 registers, k = 6)
	- RAM512 (512 registers, k = 9)
	- RAM4k (4096 registers, k = 12)
	- RAM16k (16384 registers, k = 14)

	- Construction will be 'suprisingly simple'



* Why is this called Random Access Memory (RAM)

	- Regardless of size, it takes the same amount of time to access any register 
		- It takes the same amount of time to access a register to k = 6,000,000 as it does for k = 20
		- There is no 'travel time' between registers

	- You can 'at random' select any register and read and/or write to it







