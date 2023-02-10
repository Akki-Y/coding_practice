def quick_sort(arr, first, last)
  if first < last
   index = divide(arr, first, last)
   quick_sort(arr, first, index - 1)
   quick_sort(arr, index + 1, last)
  end
  return arr
end

def divide(arr, first, last)
  pivot = arr[last]
index = first 
element = first
while element < last
  if arr[element] <= pivot
   arr[element],  arr[index] = arr[index], arr[element]
   index += 1
  end
  element += 1
end
arr[index], arr[last] = arr[last], arr[index]
return index
end

arr = [5, 8, 2, 53, 66, 9]
puts "Array Value : #{arr}"
puts "Sorted array : #{quick_sort(arr, 0, arr.length - 1)}"