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
      while current.next       # [10][20][30][40] iterates next becomes nil
        current = current.next    # [[10][]] move to "next" node == [10][20]
      end
      puts current.next.inspect
      current.next = new_node     # [10] new node [20]  => [[10][20]] = [20][]
    end
  end

  
def delete_firstnode
  return if @head.nil?      #  checking whether head is nil or not 
  @head = @head.next        #  updates head to next node
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

# puts "inserted values"
# list.display

puts "Before deleted:"
list.display

puts "After deleted: "
list.delete_firstnode
list.display


# If head is nil there is no data to delete (33)