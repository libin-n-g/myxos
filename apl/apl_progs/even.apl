
integer main()
{
	integer n, pid;
	n=0;
	pid = Fork();
	while (n <= 20) do
	      print(n);
	      n = n+2;
	endwhile;
	Exit();
	return 0;
}