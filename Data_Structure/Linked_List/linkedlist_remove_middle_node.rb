class Node
  attr_accessor :data, :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end
end

def remove_middle_element(head)
  # puts head.inspect
  return nil if head.nil? || head.next.nil?  # Empty list or single node list, no middle element

  slow_ptr = head # slow_ptr = 1
  fast_ptr = head # fast_ptr = 1
  prev_node = nil # prev_node = nil

  while fast_ptr && fast_ptr.next
    # puts "#{fast_ptr && fast_ptr.next.inspect}"  
    prev_node = slow_ptr # prev_node = 1 => 2
    slow_ptr = slow_ptr.next # slow_ptr = 2 => 3
    fast_ptr = fast_ptr.next.next # fast_ptr = 3 => 5
  end

  prev_node.next = slow_ptr.next  # Remove the middle node #prev_node.next = 3 
  # puts "#{prev_node.next.inspect}"    # 2 -> 3
  # puts "#{slow_ptr.next.inspect}"     # 2 -> 4
  # puts "prevnode \n"+prev_node.data.inspect
  # puts "fast_ptr\n "+fast_ptr.data.inspect
  # puts "slow_ptr\n"+slow_ptr.data.inspect
  return head
end


# Create a sample linked list: 1 -> 2 -> 3 -> 4 -> 5
head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)

puts "Original linked list:"
current = head
while current
  print "#{current.data} "
  current = current.next
end

head = remove_middle_element(head)

puts "\nLinked list after removing middle element:"
current = head
while current
  print "#{current.data} "
  current = current.next
end


# || -> return true if one operand is true 
