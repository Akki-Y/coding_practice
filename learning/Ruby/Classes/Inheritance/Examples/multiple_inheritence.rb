module Module1
    def test
    end

    def test2
        puts 'Hi sandeep'
    end
end

module Module2
    def test3
    end

    def test4
      puts 'Hi Akki'
    end
end

class Class3
    include Module1
    include Module2

    def name
    end

    def address
    end
end


# a = Class3.new
#  a.test4
#  a.test2

# #Module2::test4

# Module x
#   Module Y
#     class Test
#         def t
#         end
#     end
#   end
# end

# a = X::Y::Test.new

