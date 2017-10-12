integer main()
{
	integer childpid, retval, counter;
	counter = 0;
	breakpoint;
	while ( counter == 0 ) do
	    childpid = Fork();
	    if(childpid == -2) then
	       retval = Exec("end.xsm");
	    endif;
	    if(childpid == -1) then
	       print("Fork Fail");
	    endif;
	endwhile;
	return 0;
}
