# Polymorphism :- It is a method where one is able to execute the same method using different objects.

# => Polymorphism Using Inheritance

class Bank
    def transaction
        puts "payment mode"
    end
end
class SBI < Bank
    def transaction
        puts "online payment "
    end
end
class Axis < Bank 
    def transaction
        puts "offline payment "
    end
end

money =Bank.new
money.transaction

money=SBI.new
money.transaction

money=Axis.new
money.transaction