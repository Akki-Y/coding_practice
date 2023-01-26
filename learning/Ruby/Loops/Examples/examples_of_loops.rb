#Loop : Loops are used to execute set of statements repeatedly based on a condition.
#----------------------------------------------------------------------------------------------------------------------------------------------
# While loop

a=0
b=6
while a < b 
 print a,".condition is true \n"   
  a+=1 # no of iterations
end

count = 1
while count <= 5
        puts "Count returns 5 times"
         count+=1  # 1=1+1 ,2=2+1 ,3=3+1 ,4=4+1 ,5=5+1 (upto false condition)
end

#----------------------------------------------------------------------------------------------------------------------------------------------

# Each iterator used to iterate over an array

nums = [1,2,3,4,5]
nums.each do |x|  
 puts x
end  # 1 2 3 4 5

# # For Loop

nums =[1,2,3,4,5]
for x in nums
    puts x
end

nums =[10,20,30,40]
sum=0
for x in nums
    sum += x
    # puts sum  # checking value by value 10,10+20,30+30,60+40 then total 
end
puts sum

#----------------------------------------------------------------------------------------------------------------------------------------------

# until   (Opposite of while) 

temp = 0
value = 5
until temp > 5
    puts "temp values : #{temp}"
     temp +=1
end 

#----------------------------------------------------------------------------------------------------------------------------------------------

# Break ( Mostly used in while loop)

x = 0
while true 
    # x += 1  # 123456
    puts x
    x += 1     
    break if x > 5
end

 #---------------------------------------------------------------------------------------------------------------------------------------------

 # Next 

 for i in (0..6)
    if i > 2 then 
    puts i
        next
        i+=1
        # next
    end
end

#----------------------------------------------------------------------------------------------------------------------------------------------

# Redo   (Restarts the current iteration)

x = 10
while (x < 30)
    puts "Iteration #{x}"
    x += 1
redo if x == 30 
end
 
#----------------------------------------------------------------------------------------------------------------------------------------------

# Retry


# While loop is used to execute a block of code repeatedly until the condition becomes false.
# until loop executes set of statements repeatedly until the condition becomes true
# The break statement is used to terminate a block early. You can also terminate from a while, for loops using a break.
# The next statement is used to skip the rest of the current iteration. Terminates execution of a block if called within a block.