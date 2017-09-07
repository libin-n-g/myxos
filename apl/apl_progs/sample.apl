decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print ("Status1 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open 0");
	print(status);
	status = Open("myfile.dat");
	print ("Open 1");
	print(status);
	status = Write(0,"qwe");
	status = Write(0,"qwe");
	print (status);
	status = Close(1);
	print("Close 1");
	print(status);
	status = Close(0);
	print("Close 0");
	print(status);
	status = Delete("even.xsm");
	print ("Status2 ");
	print(status);
	return 0;
}
