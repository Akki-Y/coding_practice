[10, 20, 30].each do |n|   
    puts n   
   end   
   for n in [10,20,30]
    puts n
   end

   #yield

   def store 
    puts " grocery "
    yield 
    puts " utensils"
    yield 
   end 
   store {puts " shopping" }

#    def test(&block)
#     block.call
#  end
#  test { puts "Hello World!"}

 # Begin end blocks

# BEGIN {
#  puts "This is main Ruby Program"
# }
# END {
#    puts "Terminating Ruby Program"
# }
#    puts "Initializing Ruby Program"


BEGIN 
{
   puts 'Starts code \n'
   puts " Start"
}
END
{
   puts 'end code'
}
puts 'Temporary code'