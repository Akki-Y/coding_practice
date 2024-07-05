#Array
arr = ["xyz", 10, 3.14, "This is a string"]
arr.each do |i|
  puts i 
end

# Hashes:
hash = color = {"red"=>0x00f0, "green"=>0x0f00}
hash.each do |key, value|
  print key, "is", value, "\n"
end


#ranges
(0..5).each do |n|
  puts n
end

(0...5).each do |n|
 print n
end
