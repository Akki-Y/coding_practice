class Box
  #public method
  def public_method
    puts "this is a public method"
    private_method #Calling a private method from within the same object
  end

  #protected
  protected
  def protected_method
    puts "This s protected method"
  end

  #private
  private
  def private_method
    puts "This is private "
  end

end

#creating instance of class
object = Box.new
object.public_method  #calling public method

#calling protectd method
begin
  object.protected_method 
rescue NoMethodError => e
  puts e.message
end

# Calling the private method
begin
  object.private_method # This will raise an error
rescue NoMethodError => e
  puts e.message
end

# Demonstrating protected method access
class AnotherClass < Box
  def call_protected_method(other_instance)
    other_instance.protected_method # This will work because it is within the same class hierarchy
  end
end

another_obj = AnotherClass.new
another_obj.call_protected_method(object) # This will work