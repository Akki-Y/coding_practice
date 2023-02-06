class Bubble_sort 
  def initialize(array)
    @arr = array
    puts "Array value #{@arr}"
  end

  def length_of_array
    (@arr.length)
  end

  def sort 
    swap = true 
    pass = 0
    while swap
      swap = false
      (length_of_array - 1 - pass).times.each do |i|
        if  @arr[i] > @arr[i+1] 
          @arr[i], @arr[i+1] = @arr[i+1], @arr[i]
          swap = true
        end
        puts "How does iteration works : #{pass}"
      end
      puts "iteration number : #{pass}"
      puts "Sorted array after iteration : #{@arr}"
      pass += 1
    end
    puts "Bubble sort is sorted : #{@arr}"
  end
end

object = Bubble_sort.new([50, 12, 9, 44, 6])
object.sort





# 3 usages 
# inner loop 
# outer loop - swap var to repeat the loop when condition satisfy (true)
# pass var = stop the unecessary iterations 