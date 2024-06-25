#declaring a module
module MyModule
  def greet
    puts "Hello"
  end

  def self.module_method
    puts "this is a module method"
  end
end

# using modules (including)
class MyClass
 include MyModule
end

obj = MyClass.new
obj.greet #Hello
