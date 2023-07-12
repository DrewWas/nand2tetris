# Unit 3.4 Counters

* Where counters come into play

	- Allow us to specify what step we are on in an algorithm
	- Allows us to arbitrarily skip/revert to a specified step

	- The computer must keep track of which instruction should be fetches and executed next
	- This control mechanism can be realized by a Program Counter	
	- The Program Counter (PC) contains the address of the instruction that will be fetched and executed next

	- Three Possible Control Settings:
		- Reset: Fetch the first instruction (PC = 0)
		- Next: Fetch the next instruction   (PC += )
		- GOTO: Fetch instruction n	     (PC = n) 


* Implementation

	- Inputs:
		- One 16-bit input bus

		- One load bit   (control bit)
		- One inc bit    (control bit)
		- One reset bit  (control bit)
		

	- Output:
		- One 16-bit out bus





