#While - It executes the code repeatedly as long as condition is true.
#new line-backslash\  or semicolon:

$a=0
$b=6
# while a < b 
#     puts a,".condition is true \n"   
#     a+=1 # no of iterations
# end



# using while begin end
# a = 0
# b = 6



# begin 
#     puts "inside loop  a = #{a} "
#     a +=1
# end while a < b

# Until - Executes code while conditional is false. 

# a=0
# b=10
# until a > b 
#     puts " Excecute where condition is false = #{a}"
#     a +=1
# end

#If an until modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.

a=0
b=6
begin 
    puts ("Condition is false using until statement = #{a}")
    a+=1
end until a > b 

# for loop
# for a in 0..10
#     puts "value is #{a}"
# end



#break 
# for i in 0..10
#     if i > 5 then 
#         break
#     end
#         puts "break statment #{i}"
# end



#next statement
# for i in 0..10
#     if i < 5 then
#         next
#     end
#         puts "next statement #{i}"
#     end



# redo statement  # (infinite loop)
# for i in 0..10
#     if i < 5 then 
#         puts " redo statement #{i}"
#         redo 
#     end 
# end



#retry statement 

    
# redo and retry used to restart the loops iteration ,but both in a different way. 
# retry only works with a rescue/begin block 
# redo only works within the loops.