# Unit 4.6: Hack Programming Part 1


* Recall we have the A-instruction (@value) and the C-instruction (dest = comp ; jump)

	- These instructions, however, are in symbolic language, and before we can do any real operations, we have to translate it into
	  0s and 1s
		- This is what is typically done by a program called an assembler
		- Once we have the instructions in 1s and 0s we can execute them

		- We will write an assembler in week/unit 6


* What do we mean when we talk about 'low-level programming'?

	- Working with memory (Part 1)
	- Branching	      (Part 2)
	- Variables	      (Part 2)
	- Iteration           (Part 2)
	- Pointers            (Part 3)
	- I/O		      (Part 3)


* Part 1:
	- Working with memory


* Working with registers and memory
	- The bread and butter of low-level programming

	- This is what you are doing all the time
		- Either the two standard registers (D and A inside the CPU) or M register --> currently selected memory register
		- M = RAM[A]


	- Typical Operations	
		- Say you want to store 10 in register D
		@10
		D=A

		- Say you want to incrment the value of D
		D=D+1

		- Say you want to set D=RAM[17]
		@17
		D=M

		- Say you want to set RAM[17]=0
		@17
		M=0

		- Say you want to set RAM[17]=10
		@10
		D=A
                @17
		M=D


		- Say you want to set RAM[3] = RAM[5]
		@3
		D=M
		@5
		M=D



* HACK program example: add two numbers

	- RAM[2] = RAM[0] + RAM[1]

           @0
           D=M
	   @1
	   D=D+M
           @2
           M=D


	- White space is ignored
		- The only real 'line numbers' are lines with instructions on them
			- So a program can be '100 lines' but if there are only 10 instructions, only 10 registers in ROM will be used



	- To ensure the program halts, we let it enter an infinite loop	
		- Unlike other assembly langs, this one does not have a way to exit (I think...)

		- @6
		  0;JMP




* Built-in symbols

	- R0 --> 0
	- R1 --> 1
	- R2 --> 2 
	- ...
	- R15 --> 15

	- These symbols can be used to denote 'virtual registers'
	- It is reccomended, that whenever you want to address 1 of the first 16 registers in memory, use R0 notation



	- SCREEN --> 16384 (RAM address that stores SMM)
	- KBD --> 24576 (RAM address that stores KMM)

	- There are other symbols that we won't go into bc they arn't used till nand2tetris Part 2


* Hack is case-sensitive
	- r5 != R5




# Unit 4.7: Hack Programming Part 2

* Part 2:
	- Branching
	- Variables
	- Iteration



* Branching
	- The ability to tell the computer to evaluate a certain boolean value/expression and from its result, decide whether to jump
	  to a new instruction or to continue as is

	- In assembly, are only branching tool is GOTO
		- In our assembly lang, it is denoted as JGT

	- if true, jump to line _
	- else, jump to line _

	- For each branch created, the program must jump back to 0 to start the infinite loop
	- Also have to make sure that when looped, the program will run the same as the first time 


* Symbolic References
	- In the hack assembly lang, declare a label with the syntax (<LABEL>)
		- To call a label, use @<LABEL>

		- Use this to make branching easier and more readable


	- *Not sure if this is right but I am just going to think of this like declaring a function*


	- @<LABEL> translates to @n where n is the instruction number following the (<LABEL>) declaration 

	- TBH a lot of this shit went over my head




* Variables
	- Has a name and a value

	- In the low-level, the only variable type is a 16-bit int

	- Variables take up a single register of memory

	- In the hack lang, assignment is done with @ and =

		- // Set temp = R1
		- @R1
		- D = M
		- @temp
		- M = D
	

	- When we say '@temp', we are saying --> Find some available memory register (say register n) and use it to represent the
	  variable temp. So, from now on, each occurance of @temp in the program will be translated into @n

		- Variables are loaded into the RAM from address 16 onwards



* *It is very important to write code that is easy to read and debug*



* Iteration

	- Lowkey straight forward and kinda what you'd expect

	- Advice:
		- Design the program using pseudo code
		- Write the program in assembly lang
		- Test the program using a variable-value trace-table



# Unit 4.8: Hack Programming Part 3

* Part 3:
	- Pointers
	- Input / Output 


* Pointers

	- Variables that store memory addresses are called pointers

	- Hack pointer logic --> Whenever we have to access memory using a pointer, we need an instruction like A = M

		- Therefore, we set the address register to the contents of some memory register



* Input and Output

	- 2 Standard I/O devices: Display (screen) and keyboard 
		- Each has its own designated area in the RAM
			- Screen memory map is 8k bits, while keyboard memory map is 16


	- In the HACK lang
		- SCREEN represents the base address of the SMM
		- KBD represents the base address of the KMM
	


	- Although we cannot manipulate the screen directly, we can manipulate the Screen Memory Map
		- Whatever we write into the SMM will be updated to the screen
		- So, basically, to write to the screen (output), just update the SMM which is just a special place in RAM



* How do we write code that takes advantage of the keyboard

	- The keyboard is connected to a single, specific regsiter in RAM. This regiseter is known as the Keyboard Memory Map
	- When the user presses a key on the keyboard, the scan-code of that key appears in the KMM


	- To check which key is currently pressed:
		- Just load the value of the RAM register that is denoted as the KMM (in this computer, its register 24576)
		- If the register contains 0, no key is pressed (at that moment)





* This applies past this course. ALWAYS WRITE PSEUDO CODE AND INSTRUCTIONS!!!


 
