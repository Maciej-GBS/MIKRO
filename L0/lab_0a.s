#----------------------------------------------------------------
# Program lab_0a.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_0a.o lab_0a.s
#  To link:    ld -o lab_0a lab_0a.o
#  To run:     ./lab_0a
#
#----------------------------------------------------------------

	.data		# directive / poczatek obszaru danych (zmiennych)
	
dummy:			# some data / etykieta wskazuje na pamiec
	.byte	0x00	# rezerwacja bajtu inicjalizacja 0x00

	.text		# move following statements onto the end of subsection (default 0)
	.global _start	# entry point / lista argumentow globalnych

_start:			# standard entry point instruction
	#JMP	_start	# JMP => jump
	NOP
