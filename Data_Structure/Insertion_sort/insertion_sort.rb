class InsertionSort
  def array arr
    n = arr.length - 1
    return "invalid " if n < 1
    for i in 1..n     
      j = i
      while j > 0
        if arr [j] < arr[j - 1]
          arr[j], arr[j - 1] = arr[j - 1], arr[j]
          else
        end
        j = j - 1
        end
        puts "sorted array :#{arr}"
      end
      return arr
    end
  end


obj = InsertionSort.new
obj.array([92, 55, 1, 66, 11])