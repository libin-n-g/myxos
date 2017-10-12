//apl program to print even numbers from 1 to 20 

decl
	integer x;
enddecl

integer main(){
	x=2;                 //initializing with 2
	while (1==1) do
		print(x);
		x=x+2;
		if (x==1000) then x=0; endif;
	endwhile;
	return 0;
} 	
