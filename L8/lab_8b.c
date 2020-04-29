//---------------------------------------------------------------
// Program lab_8b - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_8b lab_8b.c lab_8b_asm.s
// To run:          ./lab_8b
//
// To watch: https://www.youtube.com/watch?v=HCH92jtqF0k
//---------------------------------------------------------------

#include <stdio.h>

//long nest_lev;
long values[100] = {0};

long fibc( unsigned int k )
{
	//nest_lev++;
	if (values[k] > 0)
		return values[k];
	if( k == 0 ) {
		values[0] = 0;
		return 0;
	}
	else if( k == 1 ) {
		values[1] = 1;
		return 1;
	}
	else {
		values[k] = fibc( k - 2 ) + fibc( k - 1 );
		return values[k];
	}
}

long fiba( unsigned int k );

void main( void )
{
 int i;

 for( i = 0; i <= 100; i++ )
 {
   //nest_lev = 0;
   printf( "FibC( %d ) = %ld\n", i, fibc( i ) );
   //printf( "FibA( %d ) = %ld\n", i, fiba( i ) );
   //printf( "Nesting level = %ld\n", nest_lev );
 }
}
