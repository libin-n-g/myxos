decl
	integer status, fp, pos;
enddecl
integer main()
{
	string b, filename;
	integer option;
	option = 1;
	while(option!=0) do
	    //print("Enter Option");
	    //print("File SYSCall");
	    //print("1-Create");
	    //print("2-Delete");
	    //print("3-Open");
	    //print("4-Close");
	    //print("5-Read");
	    //print("6-Write");
	    //print("7-Seek");
	    //print("0-exit");
	    //read(option);
	    if (option==1) then
	       print("PID");
	       //read(filename);
	       status = Getpid();
	       //print("Status");
	       print(status);
	    endif;
	    if (option==2) then
	       print("Enter");
	       print("FileName");
	       read(filename);
	       status = Delete(filename);
	       print("Status");
	       print(status);
	    endif;
	    if (option==3) then
	       print("Enter");
	       print("FileName");
	       read(filename);
	       status = Open(filename);
	       print("filePointer");
	       print(status);
	    endif;
	    if (option==4) then
	       print("Enter");
	       print("Filepointer");
	       read(fp);
	       status = Close(fp);
	       print("filePointer");
	       print(status);
	    endif;
	    if (option==5) then
	       print("Enter");
	       print("FilePointer");
	       read(fp);
	       status = Read(fp,b);
	       print("Status");
	       print(status);
	       print("Word read");
	       print(b);
	    endif;
	    if (option==6) then
	       print("Enter");
	       print("FilePointer");
	       read(fp);
	       print("Enter Word");
	       print("To Write");
	       read(b);
	       status = Write(fp,b);
	       print("Status");
	       print(status);
	    endif;	  
	    if (option==7) then
	       print("Enter");
	       print("FilePointer");
	       read(fp);
	       print("Enter position");
	       print("To seek");
	       read(pos);
	       status = Seek(fp,pos);
	       print("Status");
	       print(status);
	    endif;
	    option = 0;
	endwhile;
	option = Fork();
	if (option >= 0) then
	   print("CHILD");
	   print (option);
	endif;
	breakpoint;
	status = Wait(0);
	print("ss");
	print(status);
	breakpoint;
	return 0;
}
