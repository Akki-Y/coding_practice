# Selecting a random value (temp) and temp < left = swap , temp > right = swap
# a = [15, 50, 38, 11, 43]
def quick_sort(arr, first, last)     
  if first < last                    
   index = partition(arr, first, last)     
   quick_sort(arr, first, index - 1)     
   quick_sort(arr, index + 1, last)
  end
 return arr
end

def partition(arr, first, last)
  puts "#{arr}"
  puts "#{first}"
  puts "#{last}"
 pivot_element = arr[last]  
 index=first     
 puts "pivot :#{pivot_element}"   
 puts "#{index}"
 i = first                       # 
 while i < last             
     if arr[i] <= pivot_element       
      arr[i], arr[index] = arr[index], arr[i]
      puts "inner loop : #{arr}"
      index += 1
    end
   i+= 1
  end 
  temp = arr[index]
  arr[index] = arr[last] 
  arr[last]  = temp
  puts "outer loop :#{arr}"
  return index
end

a = [15, 50, 38, 11,43]
puts "sorted #{quick_sort(a, 0, (a.length - 1))}"
