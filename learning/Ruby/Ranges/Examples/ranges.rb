# create range using range class

# range = Range.new(start_val, end_val, inclusive_flag)
# range = start_val..end_val
# range = start_val...end_val

# Accessing elements in the range :

# range.each {|value| puts value }

# checking if a value is in the range # Using include? method.

# range.include?(value)


# converting a range to an array 

# range.to_a

#Using control flow statements : # if and case statements

# if (1..10).include?(value)
#     puts "values are 1 to 10"
# end

# case value
# when 1..5
#     puts "value is between 1 to 5"
# when 5..10
#     puts "value is between 6 to 10"
# else
#     puts "no range found"
# end


# inclusive range(..)

(1..5)  # 1 2 3 4 5
('a'..'c')  #'a' 'b' 'c'

# exclusive range(...)

(1...5)  # 1 2 3 4
('a'...'c')      # 'a' 'b'

# Iteration 

(1..5).each do |i|
    puts i
end

# converting range to array 

(1..5).to_a

# get size of range 

(1..5).size
(1...5).size

range = (1..5).each do |num|
    puts num * 2
end