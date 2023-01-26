class Human
    def initialize()  #Method for initialization inside the class 
        puts "Intialization will be done"
    end 
    def display_details(name,age,gender)   # method display_details inside the class which will display the data for the attributes passed to it.
        puts "#{name},#{age},#{gender}" 
    end
end

            # Creating an objects and passing parameters for initialization 
    object1=Human.new
    object2=Human.new
    object1.display_details("aki",22,"Female")
    object2.display_details("priya",12,"female")

#--------------------------------------------------------------------------------------------------------------------------------------------    

 class Human
     def initialize(name,age,gender)  
           #initializing the variables
         @user_name = name
         @user_age=age
         @user_gender = gender 
     end
     def display_details
         puts "#{@user_name},#{@user_age},#{@user_gender}" 
     end 
 end

           # Creating an objects and passing parameters for initialization
      object1 =Human.new("ravi", 12,"male")
      object2=Human.new("mohit",10,"male")
      object1.display_details()
      object2.display_details()