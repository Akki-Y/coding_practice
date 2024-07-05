#    i =  0    1    2    3    4    5    6    7    8    9   #index
names = ['a', 'e', 'j', 'b', 'f', 'c', 'h', 'g', 'i', 'd']

n = names.length - 1
swap = true
# pass = 0
while swap
  swap = false
  (n).times.each do|i|
    if names[i] > names[i+1]
      names[i], names[i+1] = names[i+1], names[i]
      swap = true
    end
    # puts "iteration #{pass}"
  end
  puts "sorted #{names}"
  # pass +=1
end
sorted_names = names