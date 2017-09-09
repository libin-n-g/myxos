
fp1 = open("out.txt", "r")
fp2 = open("test.txt", "r")
Output = fp1.read()
Test = fp2.read()
assert Output==Test
