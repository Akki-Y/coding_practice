

array = [10, 20, 30, 40] 
#  sum = array.sum
#  puts "sum of array = #{sum}"
sum = 0
for i in array 
  sum += i 
end
puts "Sum of the array = #{sum}"

#-------------------------------------------------------

strings = ["hello", "world", "ruby", "programming"]
strings.each do |str|
  puts "#{str} has #{str.length} characters."
end

#--------------------------------------------------------
strings = ["hello", "world", "ruby", "programming"]
for i in 0...strings.length
  puts "#{strings[i]} has #{strings[i].length} characters."
end

#-----------------------------------------------------------
strings = ["finding","length", "of", "string"]
for string in strings 
  puts "length of #{strings}: #{string.length}"
end
#----------------------------------------------------------
strings = ["finding","length", "of", "string"]
i = 0
while i < strings.length do
  puts "length : #{strings[i].length}"
  i += 1
end


