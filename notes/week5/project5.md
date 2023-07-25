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






