 LDA #$2
 STA $1
 LDA #$0
 STA $0      ;calling($0) will now return $0200, which is the memory address of the first pixel

 LDY #$0

loop:
 STA ($0), Y
 INY
 TYA
 CPY #$FF
 BNE loop
 STA ($0), Y
 LDA #$0
 INC $1
 JMP loop