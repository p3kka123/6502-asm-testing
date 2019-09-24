;this program can be used to draw a single pixel on specific coordinates
 LDX #$5    ;x coordinate of pixel
 LDY #$5    ;y coordinate of pixel
            ;screen size is 32 by 32, so the coordinates can be between 0 and 1f

 LDA #$2
 STA $1
 LDA #$0
 STA $0

 LDA #$20

loop:
 BCS increg1
 CPX #$0
 BEQ draw
 ADC $0
 STA $0
 DEX
 LDA #$20
 JMP loop

increg1:
 CLC
 INC $1
 JMP loop
 
draw:
 LDA #$1
 STA ($0), Y