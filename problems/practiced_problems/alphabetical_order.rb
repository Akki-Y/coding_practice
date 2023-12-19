array = ['k', 'a', 'i', 'b']
length = array.length - 1
swap = true
while swap
  swap = fa
  length.times.each do|i|
  if array[i] > array[i+1]
    array[i],array[i+1] = array[i+1], array[i]
    swap = true
  end
end
puts "sort #{array}"
end

alphabetical_order = array


array = ["apple", "banana", "orange", "pear", "kiwi"]
array = array.sort
puts array.inspect
