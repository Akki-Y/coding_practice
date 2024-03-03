# Palindrome : 

def is_palindrome(x)
    string = x.to_s
    string == string.reverse
  end
  puts is_palindrome(121)