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
	status = Open("myfile.dat");
	print ("Open 2");
	print(status);
	status = Open("myfile.dat");
	print ("Open3 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open4 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open5 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open6 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open7 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open8 ");
	print(status);
	status = Open("myfile.dat");
	print ("Open9 ");
	print(status);
	status = Delete("even.xsm");
	print ("Status2 ");
	print(status);
	return 0;
}
