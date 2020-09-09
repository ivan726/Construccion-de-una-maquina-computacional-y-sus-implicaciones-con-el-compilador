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
(start)
  @8191
  D=A
  @i
  M=D
(loop)
  @KBD
  D=M
  @write
  D;JNE
  @clean
  D;JEQ
(write)
  @i
  D=M
  @SCREEN
  A=A+D
  M=-1
  @out
  0;JMP
(clean)
  @i
  D=M
  @SCREEN
  A=A+D
  M=0
  @out
  0;JMP
(out)
  @i
  MD=M-1
  @loop
  D;JGE
  @start
  0;JMP
