arr = [6,4,7,8,9]
def array(arr)
  puts "Array value : #{arr}"
  n = arr.length - 1
  swap = true
  pass = 0
  while swap
    swap = false
    (n - pass).times.each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] =  arr[i + 1], arr[i]
        swap = true
      end
      puts "How does iteration works : #{pass}"
    end
    puts "iterations : #{pass}"
    puts "Sorted array value #{arr}"
    pass += 1
  end
end

p array(arr)



# def bubble_sort(arr)
#   n = arr.length 
#   swap= true
#   while swap 
#     swap = false
#    (n - 1).times.each do|i|
#       if arr[i] > arr[i+1]
#         arr[i], arr[i+1] = arr[i+1], arr[i]
#         swap = true
#       end
#     end
#   end
#   arr
# end

# arr = [9, 3, 6, 1, 2]
# p bubble_sort(arr)


    