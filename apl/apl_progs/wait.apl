integer main()
{
	integer a, s , n;
	s = Fork();
	print("S IS");
	print (s);
	
	if (s >= 0 && s < 32) then
		print("beforewait");
		a = Wait(s);
		print ("parent");
		print (a);
	endif;
	
	if (s == -2) then
                print("signal");
		a = Signal();
		print ("child");
		print (a);
	endif;
	

	if (s == -2) then
		a = Getppid();
		a = Wait(a);
	endif;
	n = 20;
	while (n > 0) do
		print(n);
		n = n-1;	
	endwhile;
        a = Getpid();
	print(a);	
return 0;
}


