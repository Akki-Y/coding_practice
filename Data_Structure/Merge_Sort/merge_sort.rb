# 2 methods  (Using class)

class MergeSort
  def merge_sort(arr)
    n = arr.length
    if n == 1
      return arr
    else
      mid = (n/2)
      left = merge_sort(arr[0..mid - 1])
      right = merge_sort(arr[mid..n])
      merge(left, right)
    end
  end
    def merge(left, right)
      if left.empty?
        right
      elsif right.empty?
        left
      elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length], right)
      else
        [right[0]] + merge(left, right[1..left.length])
      end
    end
  end


obj = MergeSort.new
puts obj.merge_sort([7,29,11,9])