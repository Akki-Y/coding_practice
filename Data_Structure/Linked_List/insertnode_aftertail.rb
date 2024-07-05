class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end 

class LinkedList
  attr_accessor :head
  
  def initialize
    @head = nil 
  end 
   
  def insert(data)
    new_node = Node.new(data)

    if @head.nil?           # If the list is empty 
      @head = new_node      # then new node is head
      # puts "#{@head.inspect}"   # data = 1
    else
    current = @head
    while current.next != nil  # loop to the last node
      current = current.next
      # puts "#{current.inspect}"   # data 2 , next = nil
    end
    current.next = new_node  # current = 2 , nextnode = 3
  # puts "#{current.next.inspect}"
  end
end

  def display
    current = @head
    while current != nil
      puts current.data
      current = current.next
    end
  end
end

linked_list = LinkedList.new
linked_list.insert(1)
linked_list.insert(2)
linked_list.insert(3)
linked_list.display

puts "lastnode"
linked_list.insert(4)
linked_list.display

