decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print ("Status ");
	print(status);
	return 0;
}
