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

  def insert_middle(value)
    new_node = Node.new(value)
  
    if head.nil?                                           # if list is empty        
      @head = new_node                                     # then creates new node
      # puts "#{@head.inspect}"
    else
     current = head                                        # if head created (1)
     while current.next && current.next.data != 3          # checking whether data and the address = 3
      # puts "#{current.next && current.next.data != 3}"   # 2! = 3 true , loop continues    # next node 3 = 3 so loop exits              
      current = current.next                               
      puts "#{current.inspect}"                            # Move to next nodes 2
     end
  
     # while loop repeats until the data value != 3, if it if false it exit the loop and new node is inserted

    new_node.next = current.next                           # newnode = 5, next = 3
    # puts "#{new_node.next.inspect}"
    # puts "#{current.next.inspect}"
     current.next = new_node                               # new node = 5 linking with 2   (2,5)(5,3)(3,4)
    # puts "#{current.next.inspect}"                       # 5 3 4 nil
    end
  end

  def display
    current = head
    while current
      puts "#{current.data}"
      current = current.next
    end 
  end
end


linked_list = LinkedList.new
linked_list.head = Node.new(1)
linked_list.head.next = Node.new(2)
linked_list.head.next.next = Node.new(3)
linked_list.head.next.next.next = Node.new(4)

linked_list.insert_middle(5)
linked_list.display
