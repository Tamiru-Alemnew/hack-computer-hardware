// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// implementation
(LOOP)
    @8192
    D=A
    @i
    M=D
    @KBD
    D=M
    @FILL
    D;JNE
    @CLEAR
    D;JEQ
    @LOOP
    0;JMP

(FILL)
    @SCREEN
    D=M
    @LOOP
    D;JNE
    @i
    M=M-1
    @SCREEN
    D=A
    @i
    D=D+M
    @R0
    M=D
    @0
    D=!A
    @R0
    A=M
    M=D
    @FILL
    0;JMP


(CLEAR)
    @SCREEN
    D=M
    @LOOP
    D;JEQ
    @i
    M=M-1
    @SCREEN
    D=A
    @i
    A=D+M
    M=0
    @CLEAR
    0;JMP
