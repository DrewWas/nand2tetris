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
D = M
@R2
M = D
@END
D ; JEQ // If R0 = 0, set R2 = 0 and jump to end


@R1
D = M
@R2
M = D
@END 
D ; JEQ // If R1 = 0, set R2 = 0 and jump to end


(LOOP)

  @R0
  A = M
  @R2
  D = M
  M = D + A
// Set R2 = R2 + R0


// i -= 1
// If i > 0, go back to loop


(END) 
  @END
  0 ; JMP









