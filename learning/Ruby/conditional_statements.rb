# If, else, unless, case, until, redo, next, break, yield

# if..else
age = 14
if age >= 18
  puts "You are an adult."
elsif age >= 13
  puts "You are a teenager."
else
  puts "You are a child."
end

# unless - Opposite of if, if Condition false - code executes.

Logged_in = false
unless Logged_in
  puts "Please login."
else
  puts "Welcome back!"
end

puts "Inline unless." unless Logged_in

# Case 

day = "Sunday"

case day
when "Monday"
  puts "start of wok week"
when "Friday"
  puts "end of work week"
when "Saturday", "Sunday"
  puts "Weekend"
else
  puts "Midweeks"
end

# until - opposite of while

x = 0

until x > 5
  puts x
  x += 1
end

# next - skips the rest of the current iteration and moves to the next iteration of the loop.

(1..5).each do |i|
  next if i == 3
  puts i
end

# redo - restarts the current iteration of the loop without checking the conditon loop again.

i = 1

while i <= 5
  if i == 3
    puts "Redoing number: #{i}"
    redo  # Restart the current iteration without incrementing i
  end
  puts i
  i += 1
end

# break - terminates loop immediately.

(1..5).each do |n|
  break if n == 3
  puts n 
end

# yield - call a block that is passed to the method.

def greeting
  puts "Hello"
  yield if block_given?
  puts "Good bye!"
end

greeting do
  puts "Nice to meet you"
end


