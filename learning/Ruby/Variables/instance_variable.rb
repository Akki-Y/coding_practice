class Employee
  def set_data(empName, empAge)
      @name = empName
      @age  = empAge
  end

  def get_name()
      return @name
  end

  def get_age()
      return @age
  end
end

e1 = Employee.new
e1.set_data("Mugambo", 24)
e2 = Employee.new
e2.set_data("Robert", 31)
puts "Employee #1, Name = #{e1.get_name()}, Age = #{e1.get_age()}"
puts "Employee #2, Name = #{e2.get_name()}, Age = #{e2.get_age()}"