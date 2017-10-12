integer main()
{
	integer pid;
	integer ret;
	pid = Fork();
	print(pid);
	if(pid==-2) then
		pid=Exec("s11test.xsm");
	endif;
	pid = Fork();
	print(pid);
	if(pid==-2) then
		pid=Exec("even.xsm");
	endif;
	//print("waiting");
	//ret = Wait(pid);
	print("123");
	//Exit();
	return 0;
}
