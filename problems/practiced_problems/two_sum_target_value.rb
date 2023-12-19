# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

def two_sum(nums, target)
  n = nums.length
   for i in 0..n 
     for j in i+1..n
       if nums[i] + nums[j] == target
        return[i, j]
       end
     end
   end  
 end
 
nums = [2,7,11,15]
target = 9
sum = two_sum(nums, target)
puts sum.inspect
