$, =", "   # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}" # bas ?/


nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

digits = Array(0..9) # expected 0 2 4 6 8 
puts "#{digits}"


