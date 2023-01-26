# IF ELSE

# if condition
#      # If condition is true ,code excecutes if block
# else 
#     # If condition is false ,code excecutes else block
# end
#----------------------------------------------------------------------------------------------------------------------------------------------

# IF ELse

students = ['akki','akshaya','sweety,']
if students.length ==1
     puts "student with single group"
else
     puts "students in a group is #{students.length}"
end

#----------------------------------------------------------------------------------------------------------------------------------------------

# case statment 

# case expression # expression - condition
# when expression1
#      # when expression 1 matches code will be executed 
# when expression2
#      # when expression2 matches code will be executed
# else 
#      # If expression 1 & 2 dosesnot match else block will be executed
# end 

Random_value=40
case Random_value  
when 20
     puts "print between if 20 is true"
when 30
     puts "print between if 30 is true"
when 40 
     puts "print between if 40 is true"
else 
     puts "No value found"
end

#----------------------------------------------------------------------------------------------------------------------------------------------

# Unless Statement  (Opposite of if else statement)

age = 23
unless age < 18 
     puts "you are eligible to vote"
else 
     puts "you are not eligible to vote"
end 

#----------------------------------------------------------------------------------------------------------------------------------------------

