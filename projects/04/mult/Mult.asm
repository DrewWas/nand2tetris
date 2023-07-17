// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// This is a non-destructive implementation

@R1
D = M
@i
M = D // i = R1

@R0
@END
M ; JEQ // If R0 = 0, end


(LOOP)
   @i
   @END
   M ; JEQ  // If i = 0, end

   // else

   @R1
   D = M
   @R2
   A = M
   M = D + A  // R2 = R1 

   @i 
   M = M - 1 // i -= 1
   // back to loop
   @LOOP 

(END) 
  @END
  0 ; JMP









