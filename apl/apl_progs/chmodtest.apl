decl
	integer n, i, j, status;
enddecl
integer main(){
	status=Create("Test.dat");
	print("Created");
	print(status);
	n=0;
	while(n<=7) do
		print("mod");
		print(n);    
		status=Open("Test.dat", 0);
		print("oPEN 0");
		print(status);
		status=Open("Test.dat", 1);
		print("open 1");
		print(status);
		n=n+1;
		status = Chmod("Test.dat", n);
		print("Chmod");
		print(status);
	endwhile;
	status=Chmod("Test.dat", 0);
	print("DeleteF");
	status = Delete("Test.dat");
	print(status);
	n=0;
	while(n<=7) do
		status = Close(n);
		print(status);
		n=n+1;
	endwhile;	
	return 0;
}
