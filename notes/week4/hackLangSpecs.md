# Unit 4.4: Hack Language Specification


* What we have so far 

	- Instruction Memory (ROM)	
	- Data Memory (RAM)
	- CPU
	- Data buses
	- A-instructions
	- C-instructions




* How to write machine language programs

	- You can write machine language programs in 2 different styles/'flavors'
		- Binary code (1s and 0s)
		- Symbolic language (@17, D+1;JLE)

	
	- If you write in symbolic, you need some type of translator to get it into 1s and 0s before loading it into the ROM
		- We will focus on this translation next week



* The A-instruction: Symbolic and Binary Syntax
	- Symbolic		- Binary

	- @value 		- 0value
					- Here, 0 is an 'opp code' as it specifies what operation the rest of the data is going to be
					  used for 



* The C-instruction: Symbolic and Binary Syntax
	- Symbolic		- Binary

	- dest = comp ; jump	- 111ac1c2c3c4c5c6d1d2d3j1j2j3
					- Here, 1 is an opp code

					- The next two ones are simply ignored
						- We only need 2 bits for opp codes because there are only 2 possible types of
						  instructions
					- a - c6 = comp bits
					- d1 - d3= dest bits
					- j1 - j3 = jump bits


					- For the comp bits, there is a table that maps binary nums to operations
						- Ex: a=0, c1-6=010011 = D - A --> 0010011 = D - A

					- Same thing for dest and jump bit sets


* Conclusion

	- There is a symbolic way to write these programs and a binary way to write these programs 
	
	- Writing a translator to translate symbolic into binary will be done later on






