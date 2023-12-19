# Palindrome : Sequence of characters that reads same from forward & backward Ex: "MALAYALAM", 121
# Palindrome using two pointers print whether it is palindrome or not.

def valid_palindrome(n)

  # initialize pointers
  left =0
  right = n.length - 1

  while left < right   
    return false if n[left] != n[right]

    left += 1
    right -= 1
  end
 return true 
end

puts valid_palindrome("malayalam")
puts valid_palindrome("akshaya")
puts valid_palindrome("raceacar")
