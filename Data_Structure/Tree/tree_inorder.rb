class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = TreeNode.new(value)
    else
      insert_node(@root, value)
    end
  end

  def insert_node(node, value)
    if value < node.value
      if node.left.nil?
        node.left = TreeNode.new(value)
      else
        insert_node(node.left, value)    # 6 4
        # puts node.left.inspect           
      end
    else
      if node.right.nil?
        node.right = TreeNode.new(value)
      else
        insert_node(node.right, value)   
        # puts node.right.inspect
      end
    end
  end

  def inorder_traversal(node)
    return if node.nil?
    
    inorder_traversal(node.left)
    puts node.value
    inorder_traversal(node.right)
  end

  def delete(value)
    @root = delete_node(@root, value)
  end

  def delete_node(node, value)
    return if node.nil?

    if value < node.value                         
      node.left = delete_node(node.left, value)   
      # puts "left #{node.left.inspect}"    
    elsif value > node.value                      
      node.right = delete_node(node.right, value)
    else
      if node.left.nil?                           
        return node.right
      elsif node.right.nil?                       
        return node.left
      else
        middle = mid_node(node.right)             
        node.value = middle.value
        node.right = delete_node(node.right, middle.value)
      end
    end
    node 
  end
  
  def mid_node(node)
    while node.left
      node = node.left
    end
    node
  end

  def display
    display_tree(@root)
  end

  def display_tree(node)
    return if node.nil?
  
    display_tree(node.left)
    puts node.value
    display_tree(node.right)
  end
end

tree = BinaryTree.new
tree.insert(9)
tree.insert(6)
tree.insert(10)
tree.insert(4)
tree.insert(5)
puts "After inserted:"
tree.display
puts "Before deleted:"
tree.display
tree.delete(4)
puts "After deleted:"
tree.display
