# Comparison Operators

a = 1
b = 1
puts a == b 
puts a != b
puts a >  b
puts a <  b 
puts a >= b
puts a <= b
puts a <=> b
puts a === b 
puts a .eql? b
puts a equal? b



# == Checks if the value of two operands are equal or not . if Yes condition is true
# != Checks if the value of two operands are equal or not . if values are not equal condition becomes false.
# >  Checks left operand is greater than right operand.
# <  Checks right operand is greater than left operand.
# >= Checks left operand is greater than or equal to right operand.
# <= Checks right operand is greater than or equal to left operand.
# <=> Combined comparison operator , Returns 0 if first value = second , Returns 1 if first operand > second and -1 if first operand < second .
# === Used to test equality within a when clause of a case statement.  
# .eql? True if the reciever and argument have both the same type and equal values   1==1.0 (true) , 1 eql? 1.0 (false)
# equal? True if the reciever and argument have the same type object_id