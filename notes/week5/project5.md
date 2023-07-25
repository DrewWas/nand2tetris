# Unit 5.5: Project 5


* Hardware Organization: A Hierarchy of Chip Parts


	- We can imagine the computer as a very complicated chip with 2 components
		

	- Computer

		- CPU
			- PC
				- Adder
					- Logic Gates
				- Registers
					- Logic Gates
			- ALU
				- Adder
					- Logic Gates
		
			- Registers
				- Logic Gates




		- Memory
			- RAM units
				- Registers
					- Logic Gates



* Implementation Tips

	- Chip Parts:
		- Mux16
		- ARegister
		- DRegister
		- PC
		- ALU
		- etc.

	- Most of the control bits (labeled c in the schematic) come from the original instruction bus (what about A
	  register after?)


	- You may have to add some logic to process some of the control bits before you map them into the logic pin of the
	  specified gate

	- Some control bits come out of the ALU (these also play an important role in the overall architecture)



* The Data Memory Implementation (RAM)

	- Use memory chips we have already built 

	- Remember the Data Memory consists of RAM (16K), SMM (8K), and the KMM (1 register)


* Program Memory Implementation (ROM)

	- Pretty easy, so it's built in!
	- This chip can load a program within the hardware simulator




# Unit 5.6: Perspectives

	- Having a seperate RAM and ROM is sometimes known as a Harvard Architecture

		- As opposed to the Von Neumann architecture where there is just one big memory and you need a multiplexor to
		  determine if the memory you want to access is data or program memory

		- Some people, however, view the Harvard architecture as a 'flavor' or subset of the Von Neumann Architecture


	- This architecture is fine for our purposes and many embedded systems
		- We choose the Harvard Architecture because it is a bit easier to implement



	- *In the Von Neumann architecture, we expect the computer to do different things at different cycles
		- This can be modeled by a Finite State Machine


	- How do we add more peripheral devices?
		- Set aside more blocks of memory that can serve to hold the data from these other Inputs (ex: microphone)

	- It is hard to have a lot of peripheral devices, however, because the CPU has to manage all of their sub-storages in
	  the data memory (like the SMM and KMM)
		- A solution to this is to utilize a device controler which is dedicated hardware to manage the disk





