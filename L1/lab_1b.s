#----------------------------------------------------------------
# Program lab_1b.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_1b.o lab_1b.s
#  To link:    ld -o lab_1b lab_1b.o
#  To run:     ./lab_1b
#
#----------------------------------------------------------------

	.equ	write_64,0x01	#write data to file function
	.equ	exit_64,0x3C	#exit program function

	.equ	stdout,0x01	#handle to stdout
	.data

# zmienna
counter:
	.byte 0
	
txt_A:
	.ascii	"Aa\n"		#first message

	.text
	.global _start
	
	.macro disp_str_64 file_id, address, length
	mov $write_64, %rax
	mov \file_id, %rdi
	mov \address, %rsi
	mov \length, %rdx
	syscall
	.endm

	.macro exit_prog_64 exit_code
	mov $exit_64, %rax
	mov \exit_code, %rdi
	syscall
	.endm

_start:
	#mov $5, %r15
	movb $5, counter

again:
	disp_str_64 $stdout, $txt_A, $3

	incb txt_A

	#dec %r15 # zmniejsz, rejestr lub zmienna przechowuje ilość powtórzeń
	decb counter
	jnz again # sprawdza ostatni rezultat

theend:
	exit_prog_64 $0		#exit program

