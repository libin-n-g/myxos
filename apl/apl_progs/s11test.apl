integer main()
{
	integer i;
	integer j;
	i=0;
	
	while(1==1) do
		print("x");
		i=i+1;
		j=0;
	endwhile;
	print("here");
	i=Getpid();
	print("PID");
	print(i);
	i=Getppid();
	print("PPID");
	print(i);
	print("Exiting");
	Exit();
	return 0;
}
