decl
	integer status;
enddecl
integer main()
{
	string b;
	integer option, pid;
	option = 1;
	while(option!=0) do
	    if (Delete("Lock.dat") == 0) then
	        print("Enter Option");
	    	print("Prog SYSCall");
	    	print("1-Fork");
	    	print("2-Exec");
	    	print("0-Exit");
	    	read(option);
	    	if (option==1) then
	       	   pid = Fork();
	       	   if (pid == -2) then
	       	      print("Child Process");
	       	   else
	              print(pid);
	       	   endif;
		endif;
	    	if (option == 2) then
	     	   print("Program");
		   read(b);
		   //status = Create("Lock.dat");
		   status = Exec(b);
		   status = Delete("Lock.dat");
		   print(status);
	        endif;
	    	status = Create("Lock.dat");
             endif;
	endwhile;
	Exit();
	return 0;
}
