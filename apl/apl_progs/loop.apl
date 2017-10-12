integer main()
{
	integer status, fp;
	status = Create("Lock.dat");
	fp = Open("Lock.dat");
	status = Write(fp, 0);
	status = Close(fp);
	status = Exec("Prog.xsm");
	return 0;
}
