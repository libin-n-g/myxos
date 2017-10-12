///Program B
integer main()
{
	integer ppid, status;
	print("Start B");
	status = Signal();
	ppid = Getppid();
	status = Wait(ppid);
	print("Syn B");
	return 0;
}
