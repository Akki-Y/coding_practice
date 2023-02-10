search_arr = (1...10).to_a
key = 3

def binary_search (arr, key)
  # return "Invalid array has been provided" if arr.empty?
  # return "Invalid key has been provided" if (key.nil?) || !(key.is_a?(Integer))  
  # return "Array do not contain the key provided, canot perform search" if !arr.include?(key)
  low = 0
  high = arr.length - 1
  while (low <= high) do
    mid = (low + high) /2 
    if arr[mid] == key 
      return mid
    elsif arr[mid] < key
     low = mid + 1
    else arr[mid] > key 
      high = mid - 1
    end
  end
end

p binary_search search_arr, key