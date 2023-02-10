arr = [4, 67, 23, 66, 6,11]
def insertion_sort arr
  n =  arr.length - 1
  return "Invalid" if n <= 1
  for i in 1..n 
    j = i
    while j > 0
      if arr[j - 1] > arr[j]
         arr[j], arr[j - 1] = arr[j - 1], arr[j]
        else
          break
      end
      j = j - 1
    end
    puts "Sorted array value : #{arr}"
  end
end

p insertion_sort(arr)