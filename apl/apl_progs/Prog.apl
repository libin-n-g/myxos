decl
	integer status;
enddecl
integer main()
{
	string b;
	integer option, pid;
	option = 1;
	while(option!=0) do
	    if (0 == 0) then
	        print("Enter Option");
	    	print("Prog SYSCall");
	    	print("1-Fork");
	    	print("2-Exec");
		print("3-Getpid");
		print("4-getppid");
		print("5-Wait");
		print("6-Signal");
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
		   status = Exec(b);
		   print(status);
	        endif;
		if (option == 3) then
		   status = Getpid();
		   print("PID");
		   print(status);
		endif;
		if (option == 4) then
		   status = Getppid();
		   print("PPID");
		   print(status);
		endif;
		if (option == 5) then
		   print("Enter PID");
		   print("To Wait");
		   read(pid);
		   status = Wait(pid);
		   print("pid-wait");
		   print(pid);
		   print("status");
		   print(status);
		endif;
		if (option == 6) then
		   status = Signal();
		   print(status);
		endif;
	    	status = Create("Lock.dat");
             endif;
	endwhile;
	Exit();
	return 0;
}
