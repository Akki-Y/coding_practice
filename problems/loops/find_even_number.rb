values = (1..20)   # (1..20).each do |values|
for i in values
  if i % 2 == 0
    puts "Even number = #{i}"
  else
    next 
  end
end