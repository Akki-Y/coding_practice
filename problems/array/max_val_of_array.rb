# Step 1 : define an array and store values.
# Step 2 : set variable max_val to the first element of array
# step 3 : for each element in the array starting from second element 
         # If element > current max value
         # set max_val to current element.
# step 4 : return max_val   


array = [1,23,55,11,66,22]
max_val = array[0]
array.each do |num|
    if num > max_val
        max_val = num 
    end
end
puts "#{max_val}"


arr = [1,2,3,4,5]
max_val = arr.max
puts "#{max_val}"