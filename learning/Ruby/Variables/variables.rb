$global_variable = 10
class Customer
  @@no_of_students = 0
  def display_global_variable
    puts "Global value is #$global_variable"
  end

  puts "This is local variable"

  def initialize(id, name)
    @instance_var_id = id
    @instance_var_name = name
  end

  def display_instance_variable
    puts "Instance variable id is #@instance_var_id"
    puts "Instance variable name is #@instance_var_name"
  end

  def display_class_variable
    @@no_of_students += 1
    puts "Class variable students are #@@no_of_students"
  end
end

object = Customer.new
object.display_global_variable

object1 = Customer.new(1, "akki")
object1.display_instance_variable

object2 = Customer.new
object2.display_class_variable