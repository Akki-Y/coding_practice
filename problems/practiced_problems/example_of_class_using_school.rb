# Using Inheritance 

class School
  def students
    # puts "Children in school"
  end
end

class Ground < School
  def students
    puts "Childrens play the games"
  end
end

class Exams < School
  def students
    puts "Conducting Examination"
  end
end

class ClassRooms < School
  def students
    children = 7
    result = case children
    when 1..5 then "Primary Stage"
    when 6..8 then "Middle School"
    when 9..10 then "Secondary Stage"
  end 
  puts result
end
end
a = Ground.new
a.students
b = Exams.new
b.students
c = ClassRooms.new
c.students
