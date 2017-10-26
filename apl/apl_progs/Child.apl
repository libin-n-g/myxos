///Child program
integer main()
{
	integer pid, status, ppid, count;
	pid = Getpid();
	ppid = Getppid();
	count = 100;
	while (count <= 150 ) do
	      print (count*pid);
	      count = count + 1;
	endwhile;
	status = Signal(ppid);
	status = Wait(pid);
	count = 100;
	while (count <= 150 ) do
	      print (-1*count*pid);
	      count = count + 1;
	endwhile;
	return 0;
}