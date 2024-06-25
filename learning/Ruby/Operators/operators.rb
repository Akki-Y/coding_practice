#Logical Operator
# && - Both Operands True
a = true
b = false
if a && b   
  puts "Both are true"
else
  puts "False"
end

#|| - atleast one operand should be true
x = true
y = false
if x || y
  puts "Alteast one is true"
else
  puts "flase"
end

#! - Boolean value, Converts true to false, flase to true

n = true
if !n
  puts "false"
else
  puts "true"
end

# Combined Example

p = true
q = false
r = true

if p && (q||r)
  puts "p is true and either q or r is true"
else
  puts "p is false or q and r are false" 
end


# Ternary Operator:


age = 18
message = age >= 18 ? "You are an adult." : "You are a minor."
puts message
