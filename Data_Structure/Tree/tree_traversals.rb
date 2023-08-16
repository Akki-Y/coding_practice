class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value 
    @left = nil 
    @right = nil 
  end 
end 

def insert(root, value)
  if root.nil?
    root = TreeNode.new(value)
  else
    insert_node(root, value)
  end
end

def insert_node(node, value)
  if value < node.value
    if node.left.nil?
      node.left = TreeNode.new(value)
    else
      insert_node(node.left, value)
    end
  else
    if node.right.nil?
      node.right = TreeNode.new(value)
    else
      insert_node(node.right, value)
    end
  end
end

# L H R
def inorder_traversal(node)
  return if node.nil?

  inorder_traversal(node.left)
  puts node.value
  inorder_traversal(node.right)
end

# H L R
def preorder_traversal(node)
  return if node.nil?

  puts node.value
  preorder_traversal(node.left)
  preorder_traversal(node.right)
end

# L R H
def postorder_traversal(node)
  return if node.nil?

  postorder_traversal(node.left)
  postorder_traversal(node.right)
  puts node.value
end
  
root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)

puts "inorder"
inorder_traversal(root)

puts "preorder"
preorder_traversal(root)

puts "postorder"
postorder_traversal(root)

# Inorder Traversal : Left, Root, Right
#        1
#      /   \
#     2     3
#    / \ 
#   4   5

# Inorder : H L R
# preorder : L H R
# postorder : L R H