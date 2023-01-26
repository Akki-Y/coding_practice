# If-Else  ==> If condition is true print true or go to else
a = 10
b= 20
if a < b   
    puts "Go by Bus "
else b < a
    puts "Go by bike "
end

# Unless => unless condition is false , then it print false statment ,condition is true then it go to else block

a = 10
b= 20
unless a < b   
    puts "Go by Bus "
else b < a
    puts "Go by bike "
end

# case Statement :

learning_level = 10
case learning_level
when 0..1              # (0..1) => 0,1
    puts "Nursery"
when 1...10             # (1...10) => 1,2,3,4,5,6,7,8,9
    puts "School"
when 11..12
    puts "Intermediate"
when 13..18
    puts "BTech"
else 
    puts "Doing Job"
end


