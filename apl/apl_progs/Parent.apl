///Parent program
integer main()
{
	integer c1pid, c2pid, c3pid, status, pid;
	c1pid = Fork();
	if (c1pid == -2) then
	   status = Exec("Child.xsm");
	   print("Exec fail");
	endif;
	c2pid = Fork();
	if (c2pid == -2) then
	   status = Exec("Child.xsm");
	   print("Exec fail");
	endif;
	c3pid = Fork();
	if (c3pid == -2) then
	   status = Exec("Child.xsm");
	   print("Exec fail");
	endif;
	pid = Getpid();
	status = Wait(pid);
	status = Wait(pid);
	status = Wait(pid);
	status = Signal(c1pid);
	status = Signal(c2pid);
	status = Signal(c3pid);
	////waiting for child to exit
	status = Wait(c1pid);
	status = Wait(c2pid);
	status = Wait(c3pid);
	return 0;
}