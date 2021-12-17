
'''
Write a program that will find all such numbers which are divisible by 7 , but are
not a multiple of 5, between 2000 and 3200(both included). The numbers obtained 
should be printed in a comma-separated sequence on a single line. 

to get numbers that are divisible by 7 we just use the % remainder operator 
if (num % 7 = 0)  # I know that is wrong but something like that. 

how can we find which numbers are a multiple of 5?

and to run the numbers between 2000 and 3200 we will use the range() method
'''

# here is the solution

l=[]
for i in range(2000, 3201):
    if (i%7==0) and (i%5!=0):
        l.append(str(i))

print(','.join(l))

'''
So they first created an array with l=[]
then you have the for loop
and the if statement, but we dont know what the "!" does in the second part. 
and then the l.append(str(i)) ,, not quite sure what is going on there either. 
The print statement is pretty straight forward, but still i could learn much. 

'''