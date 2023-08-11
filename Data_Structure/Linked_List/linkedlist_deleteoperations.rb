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
  
  # Inserting a node 
  def insert(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next 
        current = current.next 
      end
      current.next = new_node
    end 
  end 

  # deleting a node at beginning
  def delete_at_beginning
    if @head.nil?
      @head = new_node
    else
      current = @head                
      # puts "current #{current.inspect}"    
      @head = current.next                 
      # puts "#{@head.inspect}"
      current.next = nil                   
    end
  end

  # Deleting last node 
  def delete_lastnode
    if @head.nil?
      @head = new_node
  else
    current = @head
      while current.next && current.next.next
        current = current.next                    
        # puts "#{current.inspect}"
      end
      current.next = nil                         
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

linked_list = LinkedList.new
puts "after inserted "
linked_list.insert(1)
linked_list.insert(2)
linked_list.insert(3)
linked_list.insert(4)
linked_list.display

puts "after deleted first nodde"
linked_list.delete_at_beginning
linked_list.display

puts "delete lastnode"
linked_list.delete_lastnode
linked_list.display