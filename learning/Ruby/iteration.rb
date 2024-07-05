#Iteration codes 
puts "nested loop:"
i = 0;
j=0;
while i<=5
  while j<i
    print "*"
    j=j+1
  end

  i=i+1
  j=0
  puts ""
end

# Until loop
puts "until loop:"
abc = 5
until abc == 0
  puts "#{abc}"
  abc = abc - 1
end

# While loop
puts "While loop:"
abc = 5
while abc>0
  puts "while #{abc}"
  abc = abc-1
end

# Do while loop

puts "do while loop:"
abc = 5
loop do
  abc = abc-1
  puts "#{abc}"
  break
  if abc == 0
  end
end

# For loop

puts "For loop:"
n = ["a", "b", "c"]
for i in n do
  puts "n values #{i}"
end