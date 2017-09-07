decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print ("Status1 ");
	print(status);
	status = Delete("even.xsm");
	print ("Status2 ");
	print(status);
	return 0;
}
