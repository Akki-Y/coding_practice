class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(data)
    new_node = Node.new(data)

    if @head.nil?           # if list is empty 
      @head = new_node      # then creates new node
      # puts "#{@head.inspect}"        # head = 1
    else
      current = @head                       # already node exist 
      while current.next_node != nil        # loop runs until it is nil 
        current = current.next_node
        # puts "#{current.inspect} "          # data = 2, next_node = nil
      end
      current.next_node = new_node
      # puts "#{current.next_node.inspect}"   # current = 2 , nextnode = 3
    end
  end

  def insert_before_head(value)       # adding new node before head 
    new_head = Node.new(value)
    # puts "#{new_head.inspect}"      # inserting new node i.e head 4
    new_head.next_node = @head        # new node(4).next node(1) = head (4)
    # puts "#{new_head.next_node.inspect}"   # 1 2 3 
    @head = new_head
    # puts "#{@head.inspect}"            # 4 1 2 3
  end

  def display
    current = @head
    while current != nil
      puts "#{current.data}"
      current = current.next_node
    end 
  end
end

linked_list = LinkedList.new
linked_list.insert(1)
linked_list.insert(2)
linked_list.insert(3)
linked_list.display # 1 2 3

linked_list.insert_before_head(4)
linked_list.display # 4 1 2 3
