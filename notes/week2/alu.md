# Unit 2.4: Arithmetic Logic Unit 


* Von Neumann Architecture 
- Proposed by the GOAT John Vo Neumann in 1945

- Describes how general purpose computers can be build 
	- Input --> Memory <--> CPU (ALU and Control) --> Output

- The ALU computes a function on two inputs, and outputs the result
	- The function the ALU operates on is one out of a family of pre-defined arithmetic and logical functions 
		- Exs: Arithmetic --> Int Addition, Multiplication, Division, etc...
		- Exs: Logical --> Or, XOr, And, Not, etc...


- Which operation shoudl the ALU perform?
	- This is a hardware/software trade off
		- If you choose not to implement something in hardware, you can augment it later with software
		- Less hardware = More software | More hardware = Less software

	- You can make an ALU that does not support multiplication via hardware, but later on you can create this functionality through
	  software




* The HACK ALU

- Operates on two 16-bit, two's complement values (range  -2^(n-1), 2^(15) - 1)
- Outputs a single 16-bit, two's complement value

- Which function to compute is set by six 1-bit inputs (control bits)
	- zx, nx, zy, ny, f, no
	- Based on these control bits, the ALU will compute one out of a family of 18 functions (although there are 64 possible
	  functions, we will only focus on 18 for simplicity)


- Also outputs two 1-bit values (to be discussed later)
	- zr & ng



* How it works

- x and y input buses go through zx, nx, zy, ny, f, and no 'gates' linearly
	- Thus, the buses are subject to change at each gate


- If zx == 1, then x (input) = 0
- If nx == 1, then x (input) = !x (opposite) --> Not16

- If zy == 1, then y (input) = 0
- If ny == 1, then y (input) = !y (opposite) --> Not16

- If f == 1, then out = x + y
- If f == 0, then out = x & y
	- These are the x and y values that have already ran through zx, nx, zy, ny, so they likely already differ from their original
	  output

- If no == 1, then out=!out (opposite) --> Not16
	- Else, do nothing. out=out

- out=out

- There is a large truth table for this
	- The instructor did some examples on the truth table and holy shit this seems like black magic



* As we said earlier, the ALU does also output 2 one-bit output-control-bits (zr & ng)
	- The role of these bits is to say something about the main output of the ALU (out)

	- If out == 0, zr = 1
	- If out == 1, zr = 0

	- If out < 0, ng = 1	
	- If out => 0, ng = 0	

	- These two control bits will come into play when we build the complete computer architecture







