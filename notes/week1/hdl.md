# Unit 1.4: Hardware Description Language

* 'Gate' and 'Chip' can be used interchangeably
    - As a gate is just a very simple chip

* Logic Gates can be built and implemented in Hardware Description Language (HDL)
    - Once a gate has been built in HDL, you can simulate and test it and later
      build it in circuit form 

    - HDL files should start with documentation that describes what the gate is
      supposed to do
    - Then, we start with the name of the chip (gate), name of the inputs, and the
      name of the output(s)
        - Although, the chip name, inputs, and outputs are typically already given 

    - Under the "PARTS:" syntax, you begin to write the actual implementation of
      your chip
        - In the HDL (.hdl) language at least


    - Recall the steps for creating a boolean expression from a truth table
        - Create an expression that results in 1 for EACH 1 in the truth table
        - OR all those expressions together 
        - Simplify through Boolean algebra and De Morgans Laws


    - HDL has unlimited fan-out. 1 input can map to unlimited outputs (1 input can
      go through unlimited gates) 

    - For each chip part we have, we write a 1-line HDL statement
        - ex: Not(in=a, out=nota);
        - ex: And (a=nota, b=b, out=notaAndb);

        - You specify the name of the outgoing 'wire', which can be used as inputs
          to other gates

    - The HDL file is a textual description of the gate/chip diagram

    - It is very important to give outputs easily understood names as to avoid
      confusion  --> Readability is incredibly important
        - Use good in/out names
        - Word from left to right of circuit diagram 




* There are an infinite number of ways to implement gates/chips
    - Therefore, certain trade offs can be made based on different requirements
     


* HDL is a functional/declarative language
    - VHDL and Verilog are the most common HDLs
    - The HDL we will be using in this project is very barebones compared to these
      industrial languages




# Unit 1.5: Hardware Simulation

* Simulation
    - Once we have an HDL file, we can load it into a special program called a
      hardware simulator 
    - Hardware simulators are designed to simulate and test HDL files (think of it
      as the interpreter for hdl files... it wouldnt make sense to run the hdl file
      in the terminal --> What is the output?)

    - In hardware simulations you can do interactive simulation, where you
      interactively select the inputs and manually verify outputs
    - OR, you can write test scripts for hardware sims that will run through a
      number of specific inputs and check if the HDL file produces the desired
      output
        - Then you load in both the HDL file and the test script into the hardware
          simulator



* Simulation process
    - Load HDL file into hardware simulator
    - Enter 1s and 0s into the chip/gates input pins (a and b)
    - Evaluate chip/gates logic
    - Inspect resulting values (of both output pins and internal pins)

















