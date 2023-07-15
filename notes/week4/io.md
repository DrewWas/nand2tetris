# Unit 4.5 Input / Output


In this unit we will talk about how we use Machine Language to control i/o devices


* How do we use bits to aquire and display information?



* How to manipulate the display unit (screen)

	- Screen memory map
		- A designated memory area in the RAM, dedicated to manage the display unit(s)

		- The physical display is continuously refreshed from the memory map many times per second

		- Therefore, the output can be effected by writing code that manipulates the screen memory map



* Screen Memory Map

	- The display unit (for the HACK computer) is a 256x512 bit grid (only supports black and white pixels)

	- The memory map is a sequence of 16-bit values 
		- We have 8191 registers because 8191 * 16 (roughly)= 256 * 512
			- Therefore, every pixel has an associated bit --> If the bit is 1, the pixel is on, else, its off


	- We need to come up with a system to map every bit to every pixel 
		- Recall we can only access 16 bits at a time, not single bits

		- We have to find which register (sometimes called a word in this context) the pixels associated bit resides 


	- After we update the bit, we need to push it back into memory
		- Are we reading all 8k registers linearly or in parallel????


	- The first 32 registers/words correspond to the first row in the display unit
		- 32 - 63 are first the second row and so on


	- How do we set pixel (row/col) to be on/off
		- i = (32 * row) + (col // 16)
		- This is the address of the register corresponding to row/col

	- Now that we have the register, how do we access the individual bit
		- Set (col % 16) to 0 or 1
			- This is the specific bit to manipulate

		- We then write it back into the memory



* Because the SMM is just a certain region in RAM, to access it we have to either create a new chip, or address it where it starts in RAM
	- register/word = Screen[(32 * row) + (col // 16)]
	- register/word = RAM[16384 + (32 * row) + (col // 16)]
		- SMM starts at 16384 in RAM






* The input unit (keyboard)

	- The physical keyboard is associated with the keyboard memory map stored in RAM
		- Basically the same as the Screen Memory Map but way smaller
		- Because you can really only take in one keyboard input at a time (per clock cycle), the KMM is only 1 16-bit register


	- We have a simple chip called 'keyboard' that is connected to the keyboard
		- This chip is literally just a 16-bit register


	- When a key is pressed on the keyboard, its scan-code appears in the KMM
		- Ex: The scan-code for 'k' is 75, therefore when pressed, the binary representation of 75 will appear in the KMM
		- Scan codes != ASCII values | Same sorta idea tho


	- Everytime a key is pressed, the KMM is updated to that keys scan-code
	
	- When no key is pressed, KMM = 0
		- It updates every clock cycle


	- KMM = RAM[24576] (in the hack computer)
		- To see what key is being pressed at any given time, check this RAM address





