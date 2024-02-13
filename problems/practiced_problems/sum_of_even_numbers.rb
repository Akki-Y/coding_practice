# step 1 : create an array of integers
# step 2 : initialize a variable sum to 0
        # loop through each element of array
# step 3 : for each element cheack it is even or not
# step 4 : If element is even , add the values
# step 5 : print sum



arr = [1,3,5,2,6,8,10,16]
sum = 0
arr.each do |i|
    if i % 2 == 0
    sum += i
    end
end

puts sum