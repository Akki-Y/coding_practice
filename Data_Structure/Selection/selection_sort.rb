a=[45,7,11,8,33,9]
def selection_sort arr
  n = arr.length - 1
  n.times.each do |i|
    minimum_value = i  
    # j ==> Maximum Value
    (i+1..n).to_a.each do |j|
      # puts "j : #{arr[j]} | Min : #{arr[minimum_value]}" 
      if arr[j] < arr[minimum_value]
        arr[j], arr[minimum_value] = arr[minimum_value], arr[j]
        # puts "swapped array #{arr}"
      end
    end
  end
  return arr
end

p selection_sort a