decl
	integer status;
enddecl
integer main()
{
	string b;
	integer pid;
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
	status = Seek(0,10);
	print ("Seek");
	print (status);
	status = Write(0,"qwe");
	print (status);
	status = Seek(0,10);
	status = Read(0,b);
	print(b);
	status = Close(1);
	print("Close 1");
	print(status);
	status = Close(0);
	print("Close 0");
	print(status);
	status = Delete("even.xsm");
	print ("Status2 ");
	print(status);
	print ("Before Fork");
	breakpoint;
	pid = Fork();
	breakpoint;
	print(pid);
	breakpoint;
	print ("After Fork");
	return 0;
}
