///Program A
integer main()
{
	integer ppid, status;
	print("Start A");
	status = Signal();
	ppid = Getppid();
	status = Wait(ppid);
	breakpoint;
	print("Syn A");
	return 0;
}
