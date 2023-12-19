class Employee
    def initialize(name, address)
        @Employee_id=10
        @Employeename=name
        @Employeeaddress=address
    end

    def Employee_id
      @Employee_id
    end

    def  Employeename
        @Employeename
    end
    
    def Employeeaddress
        @Employeeaddress
    end
end


# object=Employee.new( 'Akki','Hyderabad')
# object.Employee_id
# puts object.Employeename
# puts object.Employeeaddress


class Aadhar
    def initialize(first_name, last_name, dob, address)
        @fname = first_name
        @lname = last_name
        @dob = dob
        @address = address
    end

    def fname
        @fname
    end

    def lname
        @lname
    end

    def dob
        dob
    end

    def address
        @address
    end

    def full_name
        @fname + @lname
        aadhar_number
    end

    private

    def aadhar_number
        rand.to_s[1..100]
    end
end


class AkkiAadhar < Aadhar #inheritence 
  def full_details
    @fname + @lname + @dob + @address
  end
end

class SandeepAadhar < Employee
end

akki_aadhar = AkkiAadhar.new('akki', 'y', '20082000', 'Sagar')

# puts akki_aadhar.full_name
# puts akki_aadhar.full_details
#puts akki_aadhar.aadhar_number
puts akki_aadhar.full_name
# sandeep_aadhar = SandeepAadhar.new('Sandeep', 'm')

# puts sandeep_aadhar.Employeeaddress
# # puts sandeep_aadhar.full_details