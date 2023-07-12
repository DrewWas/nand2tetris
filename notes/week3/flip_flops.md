# Unit 3.2: Flip Flops

* In this section we will talk about the actual chips that allow us to discretize time and perform sequential logic
	- The purpose of DFFs is to discretize time 
	- DFFs take in an input and store it until the next clock cycle. If a new input comes in during that same initial clock cycle,
	  it will disregard it and hold onto the original input. Then, once the clock cycle += 1, the input bit will now serve as the
          output bit and it will store the first input bit recieved after a specified waiting time (gray area)
		- The waiting time is required such that the current has time to go through all the previous gates

	- How DFFs work on a low-level will not be covered, and we will take them as primitive


* How to think about it
	- The DFF takes in an input at t=1, its output at t=1 is set to 0 because we dont have a t=0
	- Throughout the duration of t=1, the DFF 'holds' the bit that came in as input, but even if this bit was 1, its output will
	  still be 0, because t still = 1 and t-1 = 0
	- Next, at t=2, the output will = the input bit from t=1 that was previously held, and now that the input bit serves as the
	  output, the gate has room to collect another input, so the input at t=2 is stored to be outputted at t=3


* Remembering State
	- The missing ingredient is to remember one bit of information from time t-1 so it can be used at time t

	- At the 'end of time' t-1, such an ingredient can be at either of two states --> 'remembering 0' or 'remembering 1'

	- This ingredient remembers by 'flipping' between these possible states 
		- Gates that can flip between two states are called Flip-Flops



* Clocks
	- DFFs need a clock to operate. At first I was like, why aren't we creating a clock in this course, but after some googling
	  turns out all you need to do to make a clock is create a simple oscillating circuit with resistors and whatnot.



* Clocked Data Flip-Flop (DFF)

- Single input (in[t-1])
- Single output (out[t])



* 1-bit Register

	- Goal: Remember an input bit "forever" until requested to load a new value 

	- Two inputs load and in
	- One output out

	- If load at time t-1 == 1: # if load is 1, out(t) == in(t-1). Ik I keep repeating it but its lowkey not that complicated
		out(t) = in(t-1)   # out becomes the input from the last time step (the output doesnt update until the next time step)
  	else:
		out(t) = out(t-1)  # out does not change --> If load is 0, we don't even need to check in


* DFF vs 1-bit Register
	- DFF always stores the 'in' bit and removes the old in bit to output, while the 1-bit register only stores the new in bit if
	  load == 1
	- DFFs can store information for one time unit only, while the 1-bit register can store it for many cycles 


* How do we create a 1-bit register?

	- We use a Mux that takes in out(t), in(t) and load and push the output into a DFF



*** Does the first load always have to be True (==1) ? If it wasn't we would try to use the output at t=0 which doesn't technically
exist ***





