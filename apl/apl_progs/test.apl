// ///Program Parent
// integer main()
// {
// 	integer pid1, pid2, status;
// 	print ("ParentProg");
//        	pid1 = Fork();
//    	if (pid1 == -2) then
//       	     	status = Exec("A.xsm");
//      	endif;
//      	status = Wait(pid1);
//      	print (status);
//      	pid2 = Fork();
// 	if (pid2 == -2) then
//      		status = Exec("B.xsm");
// 	endif;
// 	status = Wait(pid2);
// 	print (status); 
// 	status = Signal();
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
