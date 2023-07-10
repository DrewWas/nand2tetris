# Unit 2.5: Project 2

* Project 2

- We are given all chips built in Project 1

- Build the following chips
	- Half Adder
	- Full Adder
	- Add16
	- Inc16
	- ALU


- Half Adder
	- Takes 2 bits (a and b)
	- Outputs 2 bits (sum and carry)
	- Pretty straight forward


- Full Adder
	- Takes in 3 bits (a,b, and c)
	- Outputs 2 bits (sum and carry)
	- Can be built from 2 half-adders (in addition to some other gates)
		- Obv there are other ways to create the full adder

- 16bit Adder
	- Takes in two 16-bit buses (a and b)
	- Outputs one 16-bit bus (out)
	- To build, just stitch together 15 full adders and 1 half adder (carry from before goes into input of next)
	- Final carry bit is ignored


- 16bit Incrementor
	- Takes in one 16-bit bus (in)
	- Outputs one 16-bit bus (out)
	- Simply adds 1 to the input and outputs (ex in decimal 12 --> 13 or 45 --> 46)
		- Obv a bit different in binary


- ALU
	- Just look at the truth table and figure it out with the gates you've already used 
	- Can be built with one 16-bit adder and a hand-full of other gates from project 1
	- Can be implemented in under 20 lines of HDL code



# Unit 2.6: Perspectives

- Next week we will be working a lot on memory

- The only non-standard chip we have built thus-far was the ALU, mainly because we wanted to prioritize simlicity (hence using 18
  functions rather than 64)

- Why did we not implement multiplication and division into the ALU?
	- Because we will implement those in the math library when we build the OS (hardware/software tradeoff)







