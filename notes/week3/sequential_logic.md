# Unit 3.1: Sequential Logic


* Combinatorial Logic
- So far, we have ignored the issue of time
	- The inputs were just 'there', fixed and unchanging

	- The output was simply a function on the input
		- Not of anything that happened 'previously'

	- * The output was computed instantaneously * 
		- * The order in which we specified operations did not matter * 
		- This is known as 'Combinatorial Logic'


* What do we 'need' from time

- We want to be able to use the same hardware to compute multiple things one after another 

- We want to be able to 'remember' the output of previous computations
	- Also want to remember where we are in a computation, and intermediary computations

- Need to be able to make sure we are not asking the computer to run computations faster than it is possible



* Implementation

- We want to convert real time into discrete time. So we will make a computer 'clock'
	- The clock will oscillate as some frequency (between 1 and 0) and each oscillation will be 1 time step

	Ex: 	Clock: 0,1,0,1,0,1,0,1
             Timestep: 1,2,3,4,5,6,7,8


- Logic gates evaluate inputs and produce outputs in an instantaneous manner (produce output at the same timestep they take in an input)
	- It can have a new input at each timestep


- The logic gates are obviosly not actually able to process these computations in instantaneous time
	- Therefore we must add a bit of artificial delay to make sure that the electrical current has had time to travel through all
	  the gates
	- Otherwise, it would try to preform calculations too fast and could lead to a wrong output as for instance, a not gate was
	  assumed to be a 0, when it was actually supposed to be a 1, it was just that the computer checked this gate before the
          current had time to reach the gate

- The Flip-Flop gates allow us to syncronyze the outputs of gates with the clock, therefore preventing any premature calculation


- Within each time step, there is a 'gray area' where we allow the current to pass through all the gates and ensure we get the proper
  outputs. Therefore, by the end of the 'gray area', all gates should have had ample time to register currents. Then, we make the
  timestep just a little bit bigger/wider than the gray area


* We use discrete time rather than continuous time to ensure the system state is stabilized 
* We know have integer time limits, and new computations (inputs and outputs) can occur at each individual timestep


* Combinatorial Logic:

Time: 1 	2	3	4 ...
in:   a		b	c	d  ...
out: f(a)      f(b)    f(c)    f(d)


* Sequential Logic:

Time: 1 	2	3	4 ...
in:   a		b	c	d  ...
out:           f(a)   f(b)   f(c) ...


* Sequential Logic with state

Time:   1 	2	3	4 ...
state:  a     b=f(a)   c=f(b)  d=f(c)





