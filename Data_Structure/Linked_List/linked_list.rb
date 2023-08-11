# Linked list : DS consist of sequence of nodes
  # 2 components : data and address of the next node

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
    new_node = Node.new(data)     # creates new node [][]

    if @head.nil?                 # if head val is empty [][] then
      @head = new_node            # set new node (10)
    else  
      current = @head             # head = [10][] , (if node is not empty)
      while current.next          # [10][20][30][40] iterates next becomes nil
        current = current.next    # [[10][]] move to "next" node == [10][20]
      end
      current.next = new_node     # [10] new node [20]  => [[10][20]] = [20][]
    end
  end

  def delete(data)
    return if @head.nil?         # checking whether head is there or not 

    if @head.data == data        # checks data in head node = data variabl  # 10 = 10
      # puts "#{@head.data == data}"
      @head = @head.next         # if matches , deleted data is head node.
      return                     
    end

    current = @head              # current node = [10]     
    while current.next           # [10][20][30][40]  iterates next becomes nil
      if current.next.data == data         # compare 10 = 20 ,20 = 20, 30 = 20            [40][40]
        current.next = current.next.next   # [10][20]=[30][40] skip the node matches go for next node   , 40[n]
        return
      end
      current= current.next      # [10] [30] move to nxt node         [30[nil]]
    end
  end

  def update(old_data, new_data)   # to compare old data and new data we have taken 2 parameters
    return if @head.nil?           # checking whether head is there or not
    current_node = @head           # current node to head 10
    while current_node             # iterates until node becomes nil (10 20 30 40) 
      if current_node.data == old_data   # if current data is old data , we need to update .10 = 10, 20 = 20 , 30 = 30, 40 = 40
        current_node.data = new_data     # update to new node (new data)   30 = 35 updated
        return 
      end
      current_node = current_node.next   # next node after updating
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
list.insert(10)
list.insert(20)
list.insert(30)
list.insert(40)

puts "inserted values"
list.display

list.delete(10)
puts "deleted"
list.display

list.update(10, 15)

puts "modified list:"
list.display
