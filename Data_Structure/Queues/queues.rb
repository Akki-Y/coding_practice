class Queue
  def initialize
    @element = Array.new
  end
  
  def dequeue
    @element.pop
  end

  def enqueue x
    @element.unshift(x)
    puts "#{self.inspect} \n"
    self
  end

  def size
    @element.size
  end
end

a = Queue.new
a.enqueue(10)
a.enqueue(20)
a.enqueue(30)
a.dequeue
puts a.inspect
