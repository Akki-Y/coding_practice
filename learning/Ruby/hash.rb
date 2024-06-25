# Creating hash 
hash = Hash.new
hash[:name] = "ali"
hash[:age] = 20
hash[:city] = "us"

#using curly braces
hash = { name: "Alice", age: 30, city: "New York" }


#Accessing values
puts hash[:name]

#Modifying values
hash[:age] = 21
puts hash[:age]

# Iterating Over a Hash
hash.each do |key, value|
  puts "#{key}: #{value}"
end


# deleting key value pair
hash.delete(:city)
puts hash


# merging two hashes

hash1 = {country: "usa", hobby: "reading"}
merge_hash = hash.merge(hash1)
puts merge_hash