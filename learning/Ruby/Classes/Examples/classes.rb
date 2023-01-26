=begin 
Write a program on data encapsulation 
=end 

class Bank 
    def initialize(id, name ,phno , type)
        @customer_id = id
        @customer_name = name
        @customer_no=phno
        @customer_type = type

    end 
    def customer_id
        # @customer_id
        puts "customer id is : #{@customer_id}"
    end
    def display_details 
        # puts "customer id is : #{@customer_id}"
        puts "customer name is : #{@customer_name}"
        puts "customer phno is : #{@customer_no}"
        puts "customer type is :#{@customer_type}"
    end 
end

object = Bank.new(20,"Priya",90020202020,"withdraw")
object1 = Bank.new(12,"akki",233444444444,"savings")
object.customer_id
object.display_details
object1.display_details