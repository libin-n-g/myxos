decl
	integer PrintFile(string FileName);
	integer CopyFile(string InFile, OutFile);
enddecl

integer CopyFile(string InFile, OutFile)
{
	integer fp1, fp2, status, Wstatus, ret;
	string temp;
	fp1 = Open(InFile);
	ret = fp1;
	if (fp1 !=-1) then
	   status = Create(OutFile);
	   ret = status;
	   if (status !=-1) then
	   	fp2 = Open(OutFile);
		ret = fp2;
	   	if (fp2 ==-1) then
	   	   status = Read(fp1, temp);
	   	   while (status!=-1) do
	      	      Wstatus = Write(fp2, temp);
	      	      if (Wstatus == -1) then
	      	            print("Write Error");
		      	    ret = -1;
			    break;
	      	      endif;
	      	      status = Read(fp1, temp);
	   	   endwhile;
	   	   ret = Close(fp2);
		   ret = 0;
	   	endif;
	   endif;
	   status = Close(fp1);
	endif;
	return ret;
}

integer main()
{
	integer status, fp, pos;
	string b, filename;
	integer option;
	option = 1;
	while(option!=0) do
	    print("Enter Option");
	    print("File SYSCall");
	    print("1-Create");
	    print("2-Delete");
	    print("3-Open");
	    print("4-Close");
	    print("5-Read");
	    print("6-Write");
	    print("7-Seek");
	    print("8-CopyFile");
	    print("0-exit");
	    read(option);
	    if (option==1) then
	       print("Enter");
	       print("FileName");
	       read(filename);
	       status = Create(filename);
	       print("Status");
	       print(status);
	       breakpoint;
	    endif;
	    if (option==2) then
	       print("Enter");
	       print("FileName");
	       read(filename);
	       status = Delete(filename);
	       print("Status");
	       print(status);
	    endif;
	    breakpoint;
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
	    if (option==8) then
	       print("Enter");
	       print("File To Copy");
	       read(b);
	       print("File To Write");
	       read(filename);
	       status = CopyFile(b, filename);
	       print("Status");
	       print(status);
	    endif;
	endwhile;
	return 0;
}
integer PrintFile(string FileName)
{
	integer fp ,status;
	string temp;
	fp = Open(FileName);
	if (fp !=-1) then
	   status = Read(fp, temp);
	   while (status!=-1) do
	      print(temp);
	      status = Read(fp, temp);
	   endwhile;
	   fp = Close(fp);
	endif;
	return fp;
}
