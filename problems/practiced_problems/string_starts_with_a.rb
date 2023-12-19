# Step 1 : create method and pass parameter string.
      # Initialize an empty array called arr_string.
# step 2 : Iterate through each string in strings array.
# step 3 : Check if the current string starts with a using start_with? method.
# step 4 : if the string starts with a add it to arr_string array using << opertator.
# step 5 :  Return arr_string array contains letters starts with a.

strings = ["akki", "akila", "bhanu", "chandu", "ahalya"]
def string_start_with_a(strings)
  arr_string= []
strings.each do |letter|
  if letter.start_with?('a')
    arr_string << letter
  end
end

return arr_string 
end

arr_string = string_start_with_a(strings)
puts arr_string