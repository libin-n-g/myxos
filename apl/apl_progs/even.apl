
integer main()
{
	integer n, pid, status;
	n=0;
	while (n <= 20) do
	      print(n);
	      n = n+2;
	endwhile;
	status = Create("Lock.dat");
	Exit();
	return 0;
}