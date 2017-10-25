integer main()
{
	integer childpid, retval, counter;
	counter = 0;
	while ( counter <= 32 ) do
	    childpid = Fork();
	    if(childpid == -2) then
	       retval = Exec("end.xsm");
	    endif;
	    if(childpid == -1) then
	       print("Fork Fail");
	    endif;
	    counter = counter + 1;
	endwhile;
	return 0;
}
