# Define a module with some methods
module Greetings
  def greet
    puts "Hello!"
  end
  
  def say_goodbye
    puts "Goodbye!"
  end
end

# Define classes that include the module as a mixin
class Person
  include Greetings
end

class Robot
  include Greetings
end

# Usage of the classes
person = Person.new
person.greet   # Output: Hello!
person.say_goodbye  # Output: Goodbye!

robot = Robot.new
robot.greet    # Output: Hello!
robot.say_goodbye   # Output: Goodbye!
