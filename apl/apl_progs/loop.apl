integer main()
{
	integer pid;
	pid = Fork();
	if (pid >= 0) then
	   print(pid);
	endif;
	breakpoint;
	pid = Exec("loop.xsm");
	return 0;
}