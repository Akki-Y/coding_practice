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

  # Inserting node 
  def insert(data)
    new_node = Node.new(data)
    if @head.nil?              
    @head = new_node            
    else                        
      current = @head           
      while current.next       
        current = current.next  
        # puts "current #{current.data.inspect}"
      end
      current.next = new_node   
      # puts "current.next #{current.next.inspect}"
    end
  end

  # Inserting a node at beginning
  def insert_at_beginning(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
     new_node.next = @head                   
    #  puts "newnode #{new_node.next.inspect}"
     @head = new_node                    
    #  puts "head #{@head.inspect}"        
    end
  end

 # Insert at the end of the node 
  def insert_at_end(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
     current = @head           
     while current.next        
      current = current.next   
      # puts "current #{current.inspect}"
     end
     current.next = new_node
    end
  end

  def insert_in_middle(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next && current.next.data != 30   
        current = current.next                      
        # puts "current #{current.inspect}"
      end
      new_node.next = current.next                      
      current.next = new_node                     
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
puts "inserted values"
list.insert(10)
list.insert(20)
list.insert(30)
list.insert(40)
list.display

puts "inserting at beginning" 
list.insert_at_beginning(50)
list.display

puts "inserting after lastnode"
list.insert_at_end(60)
list.display

puts "inserting a new node middle"
list.insert_in_middle(22)
list.display
