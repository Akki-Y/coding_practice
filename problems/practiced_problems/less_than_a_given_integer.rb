a =[5,2,7,6,1,3,4,343,38,39, 3, 38, 22, 44, 34, 56, 78, 89, 98, 66, 54, 332, 33, 44, 55, 12, 3, 7, 5, 3, 9, 11, 23, 45, 78, 54, 87, 82, 98, 22, 556, 56, 98, 33, 56, 897] #45
# if a[0] < 5 
#  a[1] < 5  a[2] < 5  a[3] < 5  a[4] < 5  a[5] < 5
    # False  &&  true   &&   false  &&   false  &&  true    &&   true
# puts " #{a[0]}"
#   puts " #{a[1]}"
#   puts " #{a[2]}"
#   puts " #{a[3]}"
#   puts " #{a[4]}"
#   puts " #{a[5]}"
# end
# if a[1] < 5
#     puts " #{a[1]}"
# end
# if a[2] < 5
#     puts " #{a[2]}"
# end
# if a[3] < 5
#     puts " #{a[3]}"
# end
# if a[4] < 5
#     puts " #{a[4]}"
# end
# if a[5] < 5
#     puts " #{a[5]}"
# end

# def array
#     @array = a.length

    # while a[1] < 5 
    #     puts "less than 5 :#{a[1]}"
    # end
    # puts "#{a.length}"


# a[0] < 5

# true -> puts "#{a[0]}"
# false -> "Given number is not less than 5"


# if a[0] < 5
#     puts "#{a[0]}"
# else
#     puts  "Given number is not less than 5"
# end

#  a.each do |i| 
# # for i in a 
# #    puts "#{i}"
#     if a[i] < 5
#          puts "less than given array value #{a[i]}"
#     else a[i] > 5
#         puts "Greater than value: #{a[i]}" 
#     end 8
# end


 a.each do |i| 
#  for i in a 
    if i < 5
        puts "less than 5:  #{i}"
    # else 
    # puts "greater than 5: #{i}"
    end
end


