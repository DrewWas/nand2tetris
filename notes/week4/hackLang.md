# Unit 4.3: The Hack Computer and Machine Language 


In the past two units we covered machine languages in general, however now, we are going to focus on the Hack specific machine language

* Hardware design and machine language design go hand in hand


* The HACK Computer we build next week will have 3 main elements

	- Instruction memory
		- ROM
		- A sequence of 16-bit registers


	- CPU
		- Performs 16-bit operations


	- Data memory
		- RAM
		- A sequence of 16-bit registers

	- Buses
		- "Highways" for the bit buses to travel on (16 lanes for 16 bits) (unless you use a big ass mux and dmux)
		- Instruction bus / Data Bus / Address Bus
		- Allow us to move buses of data beteween memories and the CPU




* It will be a 16 bit computer
	- A 16-bit computer is a computer in which all hardware is in chunks of 16
		- All standard bit buses are 16-bits




* How do we control the hack computer?
	
	- Software

	- In this level of the computer we have to use machine language

	- HACK machine language
		- 16-bit A-instructions	
		- 16-bit C-instructions	
		
		- A HACK program is a sequence of instructions written in the HACK machine language	




* Control (actually)

	- The ROM is loaded with a HACK program
	- The *reset* button is pushed
	- The program starts running



* Registers 
	
	- The HACK machine language recognized three registers
		- D register (holds a 16-bit value)
		- A register (holds a 16-bit value OR memory address)
		- M register (represents the 16-bit RAM register addressed by the A register)
			- Otherwise known as the 'selected memory register'


	- At any given moment in time (no matter how many total registers there are), only 1 register can be selected
		- This is the M register




* The A-instruction

	- @value
		- value is either a non-negative decimal const OR a symbol referring to such a const
	
		- Sets the A register to value
		- Side Effect: RAM[A] becomes the selected RAM register (is put into the M register)



	- Ex:
		- @21
			- Sets A register to 21
			- RAM[21] becomes the selected RAM register (M register)

			- The main purpose (I think) of the actual A register (in this example) is just to specify which RAM register
			  it is that is currently in the M register



	- Ex: Set RAM[100] to -1

	@100 // A=100 --> M register holds RAM[100]

	M=-1 // RAM[100] = -1





* The C-instruction

	- dest = comp ; jump
		- dest and jump are optional
		- dest = destination


		- There is a list of comp syntaxes that allow us to do operations on the M,D, and A registers (like Or16, And16, etc.)
			- Wherever you see an A, it can be replaced with M (in the operations list)


		- dest --> null, M, D, MD, A, AM, AD, AMD
			- Where/What registers the result is stored in 
			- M = RAM[A]

		- jump --> null, JGT, JEQ, JGE, JLT, JNE, JLE, JMP

			- These 8 possible conditions always compare the result of the computation to 0


	- Proccess
		- Compute the value of comp
		- Store the result in dest;
		- If the boolean expression (comp jump 0) is true, jumps to execute the instruction at ROM[A]



	- Ex: Set D register to -1	

	D = -1


	- Ex: Set RAM[300] to the value of the D register - 1

	
	@300   --> Sets M register = RAM[300]
	M = D - 1



	- Whenever you want to do something to the memory, you first have to use an A-instruction to specify which address in memory
		- What if you want to do something to multiple RAM addresses at once (is there parallelization)?


	- How does jump work?

		- Ex: If D - 1 == 0, jump to execute the instruction stored in ROM[56]

		@56     // A=56 and M = ROM/RAM[56]
		D-1 ; JEQ		// JEQ = Jump if computation = 0








