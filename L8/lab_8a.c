//---------------------------------------------------------------
// Program lab_8a - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_8a lab_8a.c lab_8a_asm.s
// To run:          ./lab_8a
//
//---------------------------------------------------------------

#include <stdio.h>

int factc( unsigned int k )
{
	if( k <= 1 )
		return 1;
	else
		return k * factc( k - 1 );
}

int facta( unsigned int k );

void main( void )
{
 int i;

 for( i = 1; i <= 6; i++ )
 {
   printf( "FactC(%d) = %d\n", i, factc(i) );
   printf( "FactA(%d) = %d\n", i, facta(i) );
 }
}
