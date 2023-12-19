# Step 1 : Creating hashes

hash = {"key" => "Val1", :key2 => 2, 3 => "val3"}
puts hash

# Creating Hash using .new method 

hash = Hash.new(0)   # default val 0
hash["new_key"] += 1    # val is 1
puts hash

# access value in hash use [] with key argument

hash["key"]

# add/update key-value pair

hash["new_key"] = "new_value"

# remove key val pair use delete 

hash.delete("key")

# to iterate key value pair used each method with two block arguments (1 for key, 1 for value)

hash.each do |key, value|
    puts "#{key} : #{value}"
end

