decl
	integer status, pid;
	string command;
enddecl
integer main()
{
	integer i;
	i = 0;
	while (i == 0) do
	      print("Enter Command");
	      read(command);
	      if (command == "exit") then
	      	 i = 1;
	      else
		 pid = Fork();
		 if (pid != -1) then
		    if (pid == -2) then
		         status = Exec(command);
			 if (status==-1) then
			    print("Exec fail");
			    i = 1;
			 endif;
	            endif;
		    status = Wait(pid);
		    if (status == -1) then
		       print("Wait fail");
		    endif;
		 else
		    print("Fork fail");
		 endif;
	      endif;
	endwhile;
	Exit();
	return 0;
}