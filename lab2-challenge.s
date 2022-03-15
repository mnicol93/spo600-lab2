  	     lda #$00	; set a pointer at $40 to point 
  	     sta $40
  	     lda #$02
  	     sta $41
	
	     lda #$02	; red top line
	     ldy #$00	; set index to 0

top:	     sta ($40),y	; set pixel at the address 
	     iny		; increment index
	     cpy #$20	; continue until done the page
	     bne top
	
	     lda #$f

middle:      sta ($40),y
	     iny
  	     bne middle
	
	     inc $41
      	     ldx $41
      	     cpx #$05
	     bne middle

middle2:     sta ($40),y
	     iny
	     cpy #$E0
	     bne middle2
	
	     lda #$5
bottom:	     sta ($40),y
	     iny
	     bne bottom

	     lda #$a
	     sta $040E
	     sta $040F
	     sta $0410
	     sta $0411
