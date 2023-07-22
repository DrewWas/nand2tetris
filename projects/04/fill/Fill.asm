// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// Idea -->
// If KBD - 1 

// Jump back to start of program



// Question / Test 1: How do we know if the keyboard is being used

// Question / Test 2: How do we fill the entire screen

// !!! Each RAM[n] is a 16-bit bus !!!


@i
M = -1      // Set R16 = i = 1111111111111111

@SCREEN
D = A
@SMM
M = D      // Set R17 = Reg # SMM starts at 


(BLACKOUT)
@i
D = M
@SMM
A = M
M = D




@SMM
M = M+1   // SMM += 1


//@LOOP
@BLACKOUT
0 ; JMP

