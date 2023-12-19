class Node 
  attr_accessor :data, :next 

  def initialize(data)
    @data = data
    @next = nil 
  end
end

class LinkedList
  attr_accessor :head , :tail

  def initialize
   @head = nil
   @tail = nil
  end

  def head_to_tail(data)
    new_node = Node.new(data)   

    if @head.nil?
      @head = new_node                # if node is empty creates new node 
      # puts "head #{@head.inspect}"  # 10
      @tail = new_node
      # puts "tail #{@tail.inspect}"  # 10
    else                              # already node exist 
      @tail.next = new_node           # 10.next = 20 
      # puts "#{@tail.next.inspect}"  # next node = 20 | 30| 40
      @tail = new_node       # 10 20 30 40 
      # puts "tail = #{@tail.inspect}"
    end 
  end

  def display 
    current = @head 
    while current
      puts current.data
      current = current.next 
    end
  end
end
        
list = LinkedList.new
puts "Circular linked list values "
list.head_to_tail(10)
list.head_to_tail(20)
list.head_to_tail(30)
list.head_to_tail(40)
list.display


# checking whether head is nil or not  
   # if head is nil create new node 
   # here we set head and tail as new node # 10
  # head = 10, tail = 10

# If the node exist then we go to else block 
   # here tail.next = 10.next = 20   [10,20] , 20.next = 30,  30.next = 40
   # tail = new_node  # 10 , 20, 30, 40
