# Global Variable

$global_variable=20
class Customer
  def ruby_program 
    puts "Global Variable is : #{$global_variable}"
  end
end
class User
  def ruby_program
    puts "Global Variable is : #{$global_variable}" 
  end
end

object1 = Customer.new
object1.ruby_program
object2 = User.new
object2.ruby_program

#----------------------------------------------------------------------------------------------------------------------------------------------

# Instance Varaiable

class Games
  def initialize(board,action,cards)
    @board_games = board
    @action_games= action
    @card_games= cards
  end
  def display_details ()
    puts "Board game is : #{@board_games}"
    puts "Action games is : #{@action_games}"
    puts "Card games is : #{@card_games}"
  end
end
  object = Games.new("chess","pubg","Rummy")
  object.display_details

#----------------------------------------------------------------------------------------------------------------------------------------------

# Class Variable

class Location
  @@class_variable = 'places'
  def initialize(city,state,village)
   @location_city =city
   @location_state=state
   @location_village=village
  end
  def location_city
     puts "Hyderabad"
     @@class_variable
  end
  def location_state
    @location_state
  end
  def location_village
    @location_village
  end 
end

object=Location.new("Hyd","Telangana","Macherla")
puts object.location_state
puts object.location_city
puts object.location_village

#----------------------------------------------------------------------------------------------------------------------------------------------

# class Variable 

class Location
  @@class_variable='This is class Variable'
  def initialize(city,state,village)
   @location_city =city
   @location_state=state
   @location_village=village
  end 
  def display_details
    @@class_variable
    puts "location_city : #{@location_city}"
    puts "State : #{@location_state}"
    puts "Village : #{@location_village}"
  end
end
object = Location.new("Hyderabad","Telangana","Macherla")
# object.location_state
# object.location_city
# object.location_village
object.display_details

#----------------------------------------------------------------------------------------------------------------------------------------------

# Local Variable

class Customer
  def initialize(id,name,address)
    @customer_id=20
    @customer_name=name
    @customer_address=address
  end
  def customer_id
    puts "Customer Id is : #{@Customer_id}"
  end
  def customer_name
    puts "akki"
  end
  def customer_address
    puts "Hyderabad"
  end
end
object = Customer.new(12,"priya","NagarjunaSagar")
object.customer_id
object.customer_name
object.customer_address