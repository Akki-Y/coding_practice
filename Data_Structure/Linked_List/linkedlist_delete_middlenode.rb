class Node
  attr_accessor :data, :next

  def initialize(data = nil)
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

    if @head.nil?                  # if head val is empty [][] then
      @head = new_node             # set new node (1)
    else  
      current = @head              # head = [1][] , (if node is not empty)
      while current.next           # [1][2][3][4][5] iterates next becomes nil
        current = current.next     # [[1][]] move to "next" node == [1][2]
      end
      current.next = new_node      # [1] new node [2]  => [[1][2]] = [2][]
    end
  end

  def delete_node(node)
    return if node.nil?
  
    if node == @head          # node = 1 
      @head = node.next       # 1 => 2
    else
      current = @head         # current = 1
  
      while current != nil && current.next != node    
        current = current.next                        # 1 => 2 => 3 ,here current is updated to 3 i.e deletednode.
      end
  
      if current != nil                              # if current is not nil
        current.next = node.next                  # currnt = 2 next = 4 2-> 4 , 4 -> 5
        # puts "#{current.inspect}"
        # puts "#{current.next.inspect}"
      end
    end
  end
  def display
    current = @head
    while current != nil
      print "#{current.data} "
      current = current.next
    end
    puts
  end
end

list = LinkedList.new
list.insert(1)
list.insert(2)
list.insert(3)
list.insert(4)
list.insert(5)
list.display

deleted_node = list.head.next.next
list.delete_node(deleted_node)
list.display

# current != nil - loop continues until end of the list, i.e current node becomes nil.
# current.next != node - next node of the current node is the node to be deleted.




# delete at beginning version 2
def delete_at_beginning_V2(data)
  new_node = Node.new(data)

if @head.nil?
  @head = new_node
else
  current =  @head
  while current.next && current.next.data == data  
    current.next = current.next.next                  
  end
  current = current.next               
  # puts "#{current.inspect}"
end
end
