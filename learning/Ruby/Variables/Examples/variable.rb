$global_variable=['akki','ruby']    #global variable
class Practice
@@akki= 'learning ruby'    #class variable 
    def initialize(id,name,address)
        @Practice_id =id
        @Practicename=name
        @Practiceaddress=address
    end
    def Practice_id
        @Practice_id 
        puts practice_id=13  #local varaiable

    end
    def Practicename
        @Practicename
        @@akki                     #class variable
    end
    def Practiceaddress
        @Practiceaddress
       # puts "global_variable = #$global_variable"
end
puts "global_variable = #$global_variable"
end
    object=Practice.new(12,'sweety','hyd')
    object.Practice_id
    puts object.Practicename 
    puts object.Practiceaddress



    #GLOBAL VARIABLE : global variable begins with $. Assignment to the global variables alters the global status . it is not recommend to use global status.
                       # They make programs Cryptic.
    
    
    #INSTANCE VARIABLE : instance variable begins with @. 

    #CLASS VARIABLE : class variable begins with @@. 