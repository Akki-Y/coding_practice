nums = [6, 3, 1, 5, 2]
target = 8
def three_sum(nums, target)
  nums.sort
  result = []

  left = 0
  right = nums.length - 1
  right_val = nums.length - 2

  while left < right
    sum = nums[left] +nums[right] + nums[right_val]
    puts "#{sum}"
    puts "#{nums[left]}"
    if sum == target
      return nums[left], nums[right], nums[right_val]
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end
end

result = three_sum(nums, target)
puts "target value #{result}"