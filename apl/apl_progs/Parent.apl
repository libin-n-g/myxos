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
	if (status==-1) then
	   print("Wait Failed");
	endif;
	status = Wait(pid);
	if (status==-1) then
	   print("Wait Failed");
	endif;
	status = Wait(pid);
	if (status==-1) then
	   print("Wait Failed");
	endif;
	status = Signal(c1pid);
	if (status==-1) then
	   print("Signal Failed");
	endif;
	status = Signal(c2pid);
	if (status==-1) then
	   print("Signal Failed");
	endif;
	status = Signal(c3pid);
	if (status==-1) then
	   print("Signal Failed");
	endif;
	////waiting for child to exit
	status = Wait(c1pid);
	status = Wait(c2pid);
	status = Wait(c3pid);
	return 0;
}