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
