
;; FILE MANAGER ;;
data segment
	S1 db 'File'
	S2 db 'Directory'
	S3 db 'List'
	S4 db 'Exit'
	S5 db 'Cancel'
	S6 db 'Create'
	S7 db 'Delete'
	
	S11 db 'Create'
	S12 db 'View'
	S13 db 'Copy'
	S14 db 'Rename'
	S15 db 'Delete'
	S16 db 'Exit'
	S17 db 'Home'
	
	S21 db 'Create'
	S22 db 'Remove'
	S23 db 'ChangeDIR'
	S24 db 'Exit'
	
	msg4 db 10, 13, 10, 13, ' Enter name of file to be renamed : $'
	msg1 db 10, 13, ' '     
	msg3 db 10, 13, 10, 13, ' Enter name of file to be deleted : $'
	msg2 db 10, 13, 10, 13, ' Enter name of file to be created : $'
	msg5 db 10, 13, ' Enter new name of file : $'
	msg6 db 10, 13, 10, 13, ' Enter name of file to be copied : $'
	msg7 db 10, 13, ' Enter destination for this file : $'
	msg8 db 10, 13, 10, 13, ' Enter name of directory to be created : $'
	msg9 db 10, 13, 10, 13, ' Enter name of directory to be removed : $'
	msg10 db 10, 13, 10, 13, ' Change directory to : $'
	msg11 db 10, 13, 10, 13, ' Enter name of file to be deleted : $'
	msg12 db 10, 13, 10, 13, ' Enter name of file to be deleted : $'
	msg13 db 10, 13, 10, 13, ' Change drive to : $'
	msg14 db 10, 13, 10, 13, ' File not found!$'
	msg15 db 10, 13, 10, 13, ' Access denied!$'
	msg16 db 10, 13, 10, 13, ' File successfully created.$'
	msg17 db 10, 13, 10, 13, ' File successfully deleted.$'
	msg18 db 10, 13, 10, 13, ' File successfully renamed.$'
	msg19 db 10, 13, 10, 13, ' Directory successfully created.$'
	msg20 db 10, 13, 10, 13, ' Directory successfully deleted.$'
	msg21 db 10, 13, 10, 13, ' Path not found!$'
	msg22 db 10, 13, 10, 13, ' Directory changed successfully.$'
	msg23 db 10, 13, 10, 13, ' Drive changed successfully.$'
	msg24 db '*.*', 0
	msg25 db 10, 13, 10, 13, ' File copied successfully.$'
	msg26 db 10, 13, '$'
	msg27 db 10, 13, 'Press any key to continue$'
	msg28 db 10, 13, 10, 13, ' Do you want to enter data now?$'
	msg29 db 10, 13, ' Enter the data (Press Esc to stop) :', 10, 13, '$'
	msg30 db 10, 13, 10, 13, ' Enter name of file to be viewed : $'
	msg31 db ' $'
	MSG110 DB 'PRESS ANY KEY TO EXIT$'	
	
	
	buffer1 db 80, 0, 80 dup(0)
	buffer2 db 80, 0, 80 dup(0)
data ends

code segment
begin1:       
   ASSUME CS:CODE,DS:DATA
	start:MOV AX,DATA
	MOV DS,AX
	MOV ES,AX
	
begin :	mov ax, 12h           ; Set graphics mode.
		int 10h
	
	

	;Drawing button background  BLUE 

	mov cx,21d		;screen column
	mov dx,210d		;screen line
	mov al,09h	;color of pixel
	mov ah,0ch	;print pixel
	sna1:int 10h
	inc cx
	cmp cx,155d	
	jne sna1
	inc dx
	mov cx,21d
	cmp dx,259d
	jne sna1

	;Drawing button background
	


	
	
;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,176d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna2:int 10h
	inc cx
	cmp cx,310d
	jne sna2
	inc dx
	mov cx,176d
	cmp dx,259d
	jne sna2

	;Drawing button background
	

	

	
	
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,331d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna3:int 10h
	inc cx
	cmp cx,465d
	jne sna3
	inc dx
	mov cx,331d
	cmp dx,259d
	jne sna3

	;Drawing button background
	


	
	
	
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,486d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna4:int 10h
	inc cx
	cmp cx,620d
	jne sna4
	inc dx
	mov cx,486d
	cmp dx,259d
	jne sna4

	;Drawing button background
	
	
	;;;;;;;;;;;;;;;;button text printing;;;;;;;;
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    	; text color change
	mov cx,04d   	; No of Characters in string
	mov dl,7d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S1
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,09d   	; No of Characters in string
	mov dl,23d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S2
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,43d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S3
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,63d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S4
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button


	;Mouse initializationnnnnnnnnnnnnn

	again:
	mov ax,0000h
	int 33h
	cmp ax,0000h
	je again

	;Endsssssssssss Mouse initializationnnnnnnnnnnnnn
	


	;show initialized mouse pointer

	mov ax, 0001h
	int 33h

	;endsssssssss show initialized mouse pointer


	;check for button click sna4
	
	
check4:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check4
	
	cmp cx,486d	;greater than or equal 486d we want
	jc check3	;to next button
	cmp cx,620d	;less than 620D
	jnc check4	
	cmp dx,210d	;greater than or equal 210d we want
	jc check1	;to first button
	cmp dx,260d	;less than 260d
	jnc check1	;to first button
	call BT4	;Action if Button Pressed

check3:
mov ax,0003h
	int 33h
	cmp bx,1h
	jne check3
	
	cmp cx,331d	;greater than or equal 1B we want!!!!
	jc check2
	cmp cx,465d	;less than 5E!!!!
	jnc check4
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check1
	cmp dx,260d	;less than 2E!!!!
	jnc check1
	jmp LISTING
	
check2:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check2
	
	

	cmp cx,176d	;greater than or equal 1B we want!!!!
	jc check1
	cmp cx,311d	;less than 5E!!!!
	jnc check3
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check1
	cmp dx,260d	;less than 2E!!!!
	jnc check1
	call BT2	
	
check1:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check1
	
	

	cmp cx,21d	;greater than or equal 1B we want!!!!
	jc check4
	cmp cx,156d	;less than 5E!!!!
	jnc check2
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check1
	cmp dx,260d	;less than 2E!!!!
	jnc check1
	call BT1
	jmp check4
	
	
	;Like getch() wait for key press before exit!!!!!!

	mov ah,07h
	int 21h

	;changing mode back to text mode....

	mov al,03h
	mov ah,00h
	int 10h
	
	
	;endsssssss changing mode back to text mode....


 ;;;;;;;;;;;;;;;;;;;File's Further Buttons;;;;;;
 
BT1 proc
		mov ax, 12h           ; Set graphics mode.
		int 10h
	
	;Drawing button background  BLUE 

	mov cx,10d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna11:int 10h
	inc cx
	cmp cx,89d
	jne sna11
	inc dx
	mov cx,10d
	cmp dx,259d
	jne sna11

	;Drawing button background

;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,100d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna12:int 10h
	inc cx
	cmp cx,179d
	jne sna12
	inc dx
	mov cx,100d
	cmp dx,259d
	jne sna12

	;Drawing button background
		
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,190d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna13:int 10h
	inc cx
	cmp cx,269d
	jne sna13
	inc dx
	mov cx,190d
	cmp dx,259d
	jne sna13

	;Drawing button background
	
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,280d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna14:int 10h
	inc cx
	cmp cx,349d
	jne sna14
	inc dx
	mov cx,280d
	cmp dx,259d
	jne sna14

	;Drawing button background
	
	mov cx,360d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna15:int 10h
	inc cx
	cmp cx,429d
	jne sna15
	inc dx
	mov cx,360d
	cmp dx,259d
	jne sna15

	;Drawing button background
	
	mov cx,440d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna16:int 10h
	inc cx
	cmp cx,519d
	jne sna16
	inc dx
	mov cx,440d
	cmp dx,259d
	jne sna16

	;Drawing button background
	
	mov cx,530d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna17:int 10h
	inc cx
	cmp cx,609d
	jne sna17
	inc dx
	mov cx,530d
	cmp dx,259d
	jne sna17

	;Drawing button background3
	
	
	
	
	;;;;;;;;;;;;;;;;button text printing;;;;;;;;
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,06d   	; No of Characters in string
	mov dl,2d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S11
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,14d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S12
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,26d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S13
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,06d   	; No of Characters in string
	mov dl,36d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S14
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,06d   	; No of Characters in string
	mov dl,46d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S15
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,57d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S16
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,69d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S17
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button


	;Mouse initializationnnnnnnnnnnnnn

	again3:
	mov ax,0000h
	int 33h
	cmp ax,0000h
	je again3

	;Endsssssssssss Mouse initializationnnnnnnnnnnnnn
	


	;show initialized mouse pointer

	mov ax, 0001h
	int 33h

	;endsssssssss show initialized mouse pointer


	;check for button click sna4
	
	
check177:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check177
	
	cmp cx,530d	;greater than or equal 1B we want!!!!
	jc check16
	cmp cx,609d	;less than 5E!!!!
	jnc check177
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	jmp begin1

check16:
mov ax,0003h
	int 33h
	cmp bx,1h
	jne check16
	
	cmp cx,440d	;greater than or equal 1B we want!!!!
	jc check15
	cmp cx,519d	;less than 5E!!!!
	jnc check177
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	call BT4
	
check15:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check15
	
	

	cmp cx,360d	;greater than or equal 1B we want!!!!
	jc check14
	cmp cx,429d	;less than 5E!!!!
	jnc check16
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	jmp DELETE	

check11: jmp check111	
check14:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check14
	
	

	cmp cx,280d	;greater than or equal 1B we want!!!!
	jc check13
	cmp cx,349d	;less than 5E!!!!
	jnc check15
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	jmp RENAME

	
	
check13:
mov ax,0003h
	int 33h
	cmp bx,1h
	jne check13
	
	cmp cx,190d	;greater than or equal 1B we want!!!!
	jc check12
	cmp cx,269d	;less than 5E!!!!
	jnc check14
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	jmp COPY
	
check12:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check12
	
	

	cmp cx,100d	;greater than or equal 1B we want!!!!
	jc check11
	cmp cx,179d	;less than 5E!!!!
	jnc check13
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check11
	cmp dx,260d	;less than 2E!!!!
	jnc check11
	jmp VIEW	
	
check111:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check111
	
	
	cmp cx,10d	;greater than or equal 1B we want!!!!
	jc check17
	cmp cx,89d	;less than 5E!!!!
	jnc check12
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check111
	cmp dx,260d	;less than 2E!!!!
	jnc check111
	jmp CREATE
check17 : jmp check177	
	;endsssssssss show initialized mouse pointer
ret
endp BT1

;;;;;;;;;;;;;;;;;;;;;Directory Buttton Click;;;;;;;;;;;;;;;;

BT2 proc

;Drawing button background  BLUE 
mov ax, 12h           ; Set graphics mode.
	int 10h
	
	mov cx,21d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna21:int 10h
	inc cx
	cmp cx,155d
	jne sna21
	inc dx
	mov cx,21d
	cmp dx,259d
	jne sna21

	;Drawing button background
	


	
	
;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,176d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna22:int 10h
	inc cx
	cmp cx,310d
	jne sna22
	inc dx
	mov cx,176d
	cmp dx,259d
	jne sna22

	;Drawing button background
	

	

	
	
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,331d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna23:int 10h
	inc cx
	cmp cx,465d
	jne sna23
	inc dx
	mov cx,331d
	cmp dx,259d
	jne sna23

	;Drawing button background
	


	
	
	
	;;;;;;;;;;;;;;;		;Drawing button background

	mov cx,486d
	mov dx,210d
	mov al,09h
	mov ah,0ch
	sna24:int 10h
	inc cx
	cmp cx,620d
	jne sna24
	inc dx
	mov cx,486d
	cmp dx,259d
	jne sna24

	;Drawing button background
	
	;Mouse initializationnnnnnnnnnnnnn

	again2:
	mov ax,0000h
	int 33h
	cmp ax,0000h
	je again2

	;Endsssssssssss Mouse initializationnnnnnnnnnnnnn
	


	;show initialized mouse pointer

	mov ax, 0001h
	int 33h

	;endsssssssss show initialized mouse pointer

	;;;;;;;;;;;;;;;;button text printing;;;;;;;;
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,06d   	; No of Characters in string
	mov dl,7d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S21
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,06d   	; No of Characters in string
	mov dl,26d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S22
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button

	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,09d   	; No of Characters in string
	mov dl,46d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S23
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	
	
	;Drawing button

	mov al,01h		; write mode
	mov bh,0h		; page number
	mov bl,04h    ;Welcome text color change
	mov cx,04d   	; No of Characters in string
	mov dl,66d		; Column Start
	mov dh,14d		; Row Start
	mov bp,offset S24
	mov ah,13h		; print string
	int 10h			; print string interrupt

	;endsssssssssss Drawing button
	;check for button click sna4
	
	
check24:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check24
	
	cmp cx,486d	;greater than or equal 1B we want!!!!
	jc check23
	cmp cx,620d	;less than 5E!!!!
	jnc check24
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check21
	cmp dx,260d	;less than 2E!!!!
	jnc check21
	call BT4

check23:
mov ax,0003h
	int 33h
	cmp bx,1h
	jne check23
	
	cmp cx,331d	;greater than or equal 1B we want!!!!
	jc check22
	cmp cx,465d	;less than 5E!!!!
	jnc check24
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check21
	cmp dx,260d	;less than 2E!!!!
	jnc check21
	jmp ChDIR
	
check22:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check22
	

	cmp cx,176d	;greater than or equal 1B we want!!!!
	jc check21
	cmp cx,311d	;less than 5E!!!!
	jnc check23
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check21
	cmp dx,260d	;less than 2E!!!!
	jnc check21
	jmp redir	
	
check21:
	mov ax,0003h
	int 33h
	cmp bx,1h
	jne check21
	
	;shr cx,01h

	cmp cx,21d	;greater than or equal 1B we want!!!!
	jc check24
	cmp cx,156d	;less than 5E!!!!
	jnc check22
	cmp dx,210d	;greater than or equal 1B we want!!!!
	jc check21
	cmp dx,260d	;less than 2E!!!!
	jnc check21
	jmp CRDIR
	jmp check24
	
ret
endp BT2
	
	;;;;;;;;;;;; EXit Button Code;;;;;;;;;;;;;;;;;
BT4 proc
exit:	
mov al,03h
mov ah,00h
int 10h
mov ax, 4c00h             ; exit program
int 21h

	endp BT4
	
CREATE:
call SIMPLE
lea dx, msg2              	  ; module for creating a file
	call disp1
	call read1                ; read name of file to be
	lea dx, buffer1[2]        ; created
	mov cx, 0
	mov ah, 3ch               ; create the file
	int 21h
	push ax                   ; push file handle onto stack.
	lea dx, msg28             ; ask if data is to
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9                 ; if choice = 'Y' or 'y'
	jnz no
	lea dx, msg29
	call disp1
	pop bx                    ; retrieve file handle from stack.
	mov buffer1[1], 0
write :	call readch           ; read data character by character.
	mov buffer1[0], al
	cmp buffer1[0], 27        ; check if character is 'Esc'(stop).
	jz no
	cmp buffer1[0], 0dh
	jne neol
	lea dx, msg26
	call disp1
	mov si, dx
	mov byte ptr ds:[si + 2], 0
	mov cx, 3
	jmp com
neol :	mov cx, 1
	lea dx, buffer1[0]
com :	mov ah, 40h            ; write to the file
	int 21h
	mov byte ptr ds:[si + 2], '$'
	jmp write
	ENDING: JMP ENDINGII
no :	lea dx, msg16          ; creation successful
	call disp1
	call readch
	jmp begin

DELETE:
call SIMPLE
lea dx, msg3              ; module for deleting a file
	call disp1
	call read1                ; read name of file to be deleted
	lea dx, buffer1[2]
	mov ah, 41h               ; delete the file
	int 21h
	cmp ax, 2                 ; error if file not found
	jnz err2
	lea dx, msg14
	call disp1
	jmp endd
err2 :  cmp ax, 5                 ; error if access denied
	jnz done
	lea dx, msg15
	call disp1
	jmp endd
done :  lea dx, msg17             ; delete successful
	call disp1
endd :	call readch
	jmp begin

ENDINGII: JMP ENDINGI

RENAME:
call SIMPLE
lea dx, msg4              ; module for renaming a file
	call disp1
	call read1                ; read name of file to be renamed
	lea dx, msg5
	call disp1
	call read2                ; read new name of file
	push ds
	pop es
	lea dx, buffer1[2]
	lea di, buffer2[2]
	mov ah, 56h               ; rename file
	int 21h
	cmp ax, 2                 ; error if file not found
	jnz err3
	lea dx, msg14
	call disp1
	jmp ende
err3 :  cmp ax, 3                 ; error if path not found
	jnz err4
	lea dx, msg14
	call disp1
	jmp ende
err4 :  cmp ax, 5                 ; error if access denied
	jnz ren
	lea dx, msg15
	call disp1
	jmp ende
ren :   lea dx, msg18             ; rename successful
	call disp1
ende :  call readch
	jmp begin

VIEW:
call SIMPLE
lea dx, msg30             ; module to view the
	call disp1		  ; contents of a file
	call read1                ; read name of file
	lea dx, msg26
	call disp1
	call disp1
	lea dx, buffer1[2]        ; open the file
	mov ax, 3d02h
	int 21h
	mov buffer2[0], 0
	cmp ax, 2                 ; error if file not found
	jnz v_err
	lea dx, msg14
	call disp1
	jmp endv
v_err : cmp ax, 3                 ; error if path not found
	jnz cont2
	lea dx, msg21
	call disp1
	jmp endv
cont2 :	mov bx, ax
	push ax
	mov cx, 1
	lea dx, buffer1
	mov ah, 3fh               ; read the file
	int 21h
	cmp ax, 0                 ; stop if end-of-file
        jz push
        jnz show2
ENDINGI: JMP ENDINGS
show2 : 	mov buffer1[1], '$'
	lea dx, buffer1
	call disp1
	pop ax
	jmp cont2
	cmp buffer1[0], 0dh
       
	inc buffer2[0]
	cmp buffer2[0], 23        ; check if end of page
	jnz show1temp
show1temp:	jmp show1
	
	lea dx, msg27
	call disp1
	call readch
	mov buffer2[0], 0
	lea dx, msg26
	call disp1
push:   mov ah,02
        mov al,0
	mov cx,0
	mov dx,10
	int 21
	;int 21h
	;push ax                   ; push file handle onto stack.
	lea dx, msg28             ; ask if data is to
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9                 ; if choice = 'Y' or 'y'
	jnz no1
	lea dx, msg29
	call disp1
	pop bx                    ; retrieve file handle from stack.
	mov buffer1[1], 0
write1 :	call readch               ; read data character by character.
	mov buffer1[0], al
	cmp buffer1[0], 27        ; check if character is 'Esc'(stop).
	jz no1
	cmp buffer1[0], 0dh
	jne neol1
	lea dx, msg26
	call disp1
	mov si, dx
	mov byte ptr ds:[si + 2], 0
	mov cx, 3
	jmp com1
neol1 :	mov cx, 1
	lea dx, buffer1[0]
com1:	mov ah, 40h               ; write to the file
	int 21h
	mov byte ptr ds:[si + 2], '$'
	jmp write1
no1 :	lea dx, msg16             ; creation successful
	call disp1
	call readch
	jmp begin
show1 : 	mov buffer1[1], '$'
	lea dx, buffer1
	call disp1
	pop ax
	jmp cont2
endv :  call readch
	jmp begin


jmp DELETE
COPY:
call SIMPLE
lea dx, msg6              ; module for copying a file
	call disp1                ; read name of file to
	call read1                ; to be copied
	mov cx, bx
	lea dx, msg7
	call disp1
	call read2                ; read path of destination
	mov buffer2[bx], '\'      ; directory
	inc bx
	mov ax, 2
cp :    mov si, ax                ; concatenating path and filename
	mov dl, buffer1[si]
	mov buffer2[bx], dl
	inc bx
	inc al
	cmp cx, ax
	jne cp
	mov cx, 0
	lea dx, buffer2[2]        ; create the file in
	mov ah, 3ch               ; destination directory
	int 21h
	cmp ax, 3                 ; Display error message
	jnz cont                  ; if path not found
	lea dx, msg21
	call disp1
	jmp COPY               ; on error read data again
cont :	push ax
	lea dx, buffer1[2]        ; open source file
	mov ax, 3d00h
	int 21h
	push ax
rd :	pop bx
	lea dx, buffer1
	mov cx, 80h               ; read source file
	mov ah, 3fh
	int 21h
	cmp ax, 0                 ; check if entire file
	jz fin                    ; has been read
	mov cx, bx
	pop bx
	push bx
	push cx
	mov cx, ax
	lea dx, buffer1           ; write into new file to
	mov ah, 40h               ; complete copy task
	int 21h
	jmp rd                    ; read file further
fin :	lea dx, msg25             ; copy successful
	call disp1
	call readch
	jmp begin

CRDIR :
call SIMPLE
lea dx, msg8              ; module for creating
	call disp1                ; a directory
	call read1                ; read name of directory
	lea dx, buffer1[2]        ; to be created
	mov ah, 39h               ; create directory
	int 21h
	cmp ax, 3                 ; error if path not found
	jnz err5
	lea dx, msg21
	call disp1
	jmp endf
err5 :  cmp ax, 5                 ; error if access denied
	jnz done1
	lea dx, msg15
	call disp1
	jmp endf
done1 : lea dx, msg19 		  ; creation successful
	call disp1
endf :	call readch
	jmp begin

REDIR :
call SIMPLE
lea dx, msg9              ; module for removing directory
	call disp1
	call read1                ; read name of directory to
	lea dx, buffer1[2]        ; be removed
	mov ah, 3ah               ; remove directory
	int 21h
	cmp ax, 3                 ; error if path not found
	jnz err6
	lea dx, msg21
	call disp1
	jmp endg
err6 :  cmp ax, 5 		  ; error if access denied
	jnz done2
	lea dx, msg15
	call disp1
	jmp endg
done2 : lea dx, msg20             ; deletion successful
	call disp1
endg :	call readch
        jmp begin
         
ChDIR :
CALL SIMPLE
lea dx, msg10             ; module for changing directory
	call disp1
	call read1                ; read name of directory to
	lea dx, buffer1[2]        ; be changed to
	mov ah, 3bh               ; change directory
	int 21h
	cmp ax, 3                 ; error if path not found
	jnz done3
	lea dx, msg21
	call disp1
	jmp endh
done3 : lea dx, msg22             ; change successful
	call disp1
endh :	call readch
	jmp begin


LISTING:   
call SIMPLE
	mov ax, 3h                ; module for displaying
	int 10h                   ; contents of directory
	lea dx, msg24
	mov cx, 0
	mov ah, 4eh               ; Get first file
	int 21h                   ; in directory
	cmp ax, 18                ; Check if no files
	jnz list                  ; in directory
	lea dx, msg14             ; Display message
	call disp1                ; 'File not found'
	call readch
	jmp begin
list :	mov ah, 2fh               ; Get dta address
	int 21h
	mov byte ptr es:[bx + 42], 0
	add bx, 1eh
	mov buffer1[0], 0
char :	mov dl, byte ptr es:[bx]  ; Get character of
	inc bx                    ; filename from DTA
	inc buffer1[0]
	cmp dl, '.'               ; Check if extension
	jnz cont3                 ; is starting
cont4 :	lea dx, msg31
	call disp1
	inc buffer1[0]
	cmp buffer1[0], 0bh       ; Check for end of filename
	jne cont4                 ; buffer - 13 characters
	jmp char
cont3 :	mov ah, 02h               ; Display character
	int 21h                   ; of filename
	cmp dl, 0                 ; Check for end
	jne char                  ; of file name
	lea dx, msg26
	call disp1
	inc cx
	cmp cx, 23                ; Check for end of page
	jne cont1
	lea dx, msg27
	call disp1
	call readch
	mov cx, 0
	lea dx, msg26
	call disp1
cont1 :	mov ah, 4fh               ; Get next file
	int 21h
	jnc list
	lea dx, msg27
	call disp1
	call readch
	jmp begin1
	
ENDINGS:
CALL SIMPLE
mov al,01h
	mov bh,0h
	mov bl, 0fh
	mov cx,15h
	mov dl,00h
	mov dh,00H
	mov bp,offset msg110
	mov ah,13h
	int 10h
mov ah,07h
	int 21h
	CALL SIMPLE
	MOV AH,4CH
	INT 21h


	disp1 proc                ; module for display of
	  mov ah, 09h             ; a string on screen
	  int 21h
	  ret
	disp1 endp

	readch proc               ; module for reading a
	  mov ah, 01h             ; character from keyboard
	  int 21h
	  ret
	readch endp

	read1 proc                ; module for reading
	  mov [buffer1], 80       ; first string
	  lea dx, buffer1
	  mov ah, 0ah             ; read string from keyboard
	  int 21h
	  mov bl, buffer1[1]
	  mov bh, 0
	  add bx, 2
	  mov buffer1[bx], 0      ; ASCIIZ string, so
	  ret                     ; terminate with 0
	read1 endp

	read2 proc                ; module for reading
	  lea dx, buffer2         ; second string
	  mov ah, 0ah
	  int 21h
	  mov bl, buffer2[1]
	  mov bh, 0
	  add bx, 2
	  mov buffer2[bx], 0
	  ret
	read2 endp
	
	SIMPLE proc
	MOV AL,03H
	MOV AH,00H
	INT 10H
	RET
	SIMPLE endp
code ends
END start
