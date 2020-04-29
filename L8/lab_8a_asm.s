#----------------------------------------------------------------
# Funkcja do programu lab_8a - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------

	.text
	.type facta, @function
	.globl facta	

facta:
	mov $1, %eax		# result

	cmp %eax, %edi		# rdi <= 1 ?
	jbe f_e			# yes

	push %rdi		# store parameter (k)

	dec %edi		# new parameter (k-1)
	call facta		# (k-1)!

	pop %rdi		# restore parameter (k)

	mul %edi		# k! = (k-1)! * k 

f_e:	ret

