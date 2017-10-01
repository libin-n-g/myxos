integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("sample.xsm");
	else
		print(childpid);
		retval = Wait(childpid);
	endif;
	Exit();
	return 0;
}
