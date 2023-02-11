stack = []
stack << 1
stack << 2
stack << 3
stack << 4
stack << 5

puts "deleted stack : #{stack.pop}"  # delete - 5 (Underflow)
puts "inserted stacks :#{stack.push}" # 1 2 3 4   (Overflow)

class Stack
  def initialize
    @elements =[]
  end
   
  def pop
    @elements.pop 
  end

  def push (x)
   @elements.push x
  end
    
  def size
    @elements.size
  end
end

a = Stack.new
a.push(1)
a.push(2)
a.push(3)
puts a.inspect  
a.pop             #delete the first element 
puts a.inspect  