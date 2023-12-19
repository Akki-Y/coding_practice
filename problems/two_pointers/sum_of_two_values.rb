nums = [1, 2, 3, 4, 5]
target = 9
def two_sum(nums, target)
  left = 0
  right = nums.length - 1

  while left < right
    sum = nums[left] + nums[right]

    if sum == target
     return nums[left], nums[right]

    elsif sum < target
      left +=1
      puts "left = #{left}"
    else
      # right -= 1
    end
  end
end

result = two_sum(nums, target)
puts "target value #{result}"
 # 0  1  2  3  4  
# [3, 7, 1, 0, 4]