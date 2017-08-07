decl
	integer n, i, j, d;
enddecl
integer main(){
	print ("Enter number");
	read (n);
	i = 2;
	print ("Prime Numbers");
	while( i <= n) do
	       j = 2;
	       d = 0;
	       while(j < i) do
	       	       if(i % j == 0) then
	       	       	    d = 1;
		    	    break;
		      endif;		
	       	      j = j + 1; 
	       endwhile;
	       if(d == 0) then
	       	     print(i);
	       endif;
	       i = i + 1;
	endwhile;
	return 0;
}
