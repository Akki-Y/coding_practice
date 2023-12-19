class Circle
  def initialize(r)  #Constructor method
      @radius = r
  end
 
  def getArea        #instance method
      3.14*@radius* @radius
  end
end

circle = Circle.new(2)   #creating object
a = circle.getArea()     #call instance method
puts "Area of bx is :#{a}"

x = 12
y = 0 
puts "enter a value"
x = gets 
puts "value of x = #{x}"