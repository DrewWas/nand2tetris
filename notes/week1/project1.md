# Unit 1.7: Project 1 Overview

* NAND TO Infinity 
    - Using NAND, we will build the following gates

	- Elementary Logic Gates:
	- Not
	- And
	- Or
	- Xor
	- Mux
	- DMux

	- 16-bit variations:
	- Not16
	- And16
	- Or16
	- Mux16

	- Multi-way variants:
	- Or8Way
	- Mux4Way16
	- Mux8Way16
	- DMux4Way
	- DMux8Way

    - We will be using these 15 particular gates because they are commonly used and
      they comprise all the elementary logic gates needed to build our computer




* Multiplexor (Mux)

    - A Mulitplexor is a gate that takes 2 inputs (a and b) and a sel input (sel),
      so 3 inputs in total

    - If sel == 0, the multiplexor outputs a (the input value)
    - If sel == 1, (aka else), the multiplexor outputs b (the input value)

    - A 2-way multiplexor allows us to select and output one out of two possible
      inputs 

    - Can be implemented with And, Or, & Not gates


* Demultiplexor

    - Acts as the inverse of a multiplexor 
    - Takes in 2 inputs, sel and in
    - Destributes the input (in) to either an a or b output based on sel




* And16

    - Takes in 2 16-bit buses as a and b inputs
    - Outputs a single 16-bit bus

    - Output is a 16-bit binary number such that out[n] == 1 if a[n] == 1 and
      b[n] == 1, else out[n] == 0



* Mux4Way16

    - Takes in 4 16-bit buses as inputs
    - Also takes in 2 sel bits as inputs

    - Outputs 1 16-bit bus


* Advice 

    - Try to implement the chips in the given order
    - Once you implement a chip, you can use it to build future chips
    - Strive to use as few chip-parts as possible

    - A chip cannot be used in its own implementation

    - *** Multi-bit buses are indexed right to left ***
	- a[0] is the right-most bit
	- a[15] is the left-most bit




