# Create a program to create 10 users with name starting from alhpabet A to J in database (mysql). When you are inserting these records, do a random insertion. 
# Wtite a pogram to read the customers & display them in sorted order using ANY sorting algorithm. 
# Time - 5 Hours
# You are free to use class based programming or generate a simple program do achieve the above requirement. 

#Step1: Capture inputs - Alhpabets for names | connection string parameters

#Step2: Establish connection to Mysql
        # > form connection string
        # > Validate if you are able really connect to Mysql - for example fire a query to see if you are able to extract results
# Step 3: Create a new database
        # Do not establish connection with db_name parameter
        # Add create database query using the Mysql client
        # validate the database
# Step 4: make your script such that it do not dependent on existing database
        # if database is present use it
        # if it is not present create & use it  
        # verify usage 
# Step 5: Create table
        # Do not establish connection with table parameter
        # Add create table query using the Mysql client
        # validate the table
# Step 6: Insert values
        # In a loop add 1-10 and the names required (alphabets)
        # create a variable to insert the values
        # write a query to insert values
        # print the query
        # validate the inserted values - for this write select query to view the results (i might need loop to view each result)
# Step 7 : Sort alphabets 
        # form inputs for bubble sort alogirthms
        # query the inserted results which are not in sorting order
        # Run bubble sort on the insert results
        # display sorted order of inserted values


#    i =  0    1    2    3    4    5    6    7    8    9   #index
names = ['a', 'e', 'j', 'b', 'f', 'c', 'h', 'g', 'i', 'd']

n = names.length - 1
swap = true
# pass = 0
while swap
  swap = false
  (n).times.each do|i|
    if names[i] > names[i+1]
      names[i], names[i+1] = names[i+1], names[i]
      swap = true
    end
    # puts "iteration #{pass}"
  end
  puts "sorted #{names}"
  # pass +=1
end
sorted_names = names

require 'mysql2'

@db_host = "localhost"
@db_user = "xxx"
@db_pass = "xxx"
@db_name = 'db_based_sorting_program'
client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass)
all_databases = client.query('show databases;')
validate_db = false
all_databases.each do |d|
  if d.values[0] == @db_name
    validate_db = true
  end
end
if validate_db
  puts "database is present"
  client.query('use db_based_sorting_program;')
else
  puts 'database is not present, creating it .........'
  create_database = client.query('create database db_based_sorting_program;')
  sleep 10
  client.query('use db_based_sorting_program;')
end

validate_table = false
all_tables = client.query('show tables;')
all_tables.each do |d|
  if d.values[0] == 'customers'
    validate_table = true
  end
end
if validate_table
  puts "table is present"
  custoemrs_list = client.query('select * from customers;')
else
  puts 'table is not present, creating it .........'
  create_table = client.query('create table customers (id INT, name VARCHAR(255));')
  sleep 10
  custoemrs_list = client.query('select * from customers;')
end
puts custoemrs_list.inspect

client.query('TRUNCATE TABLE customers')  # remove the table record
(0..9).each do |i|
  id = i + 1
  name = sorted_names[i]
  insert_query = "INSERT INTO customers (id, name) VALUES(#{id}, '#{name}')"
  client.query(insert_query) 
  # puts insert_query
end
  verify_insertion = client.query('SELECT * from customers;')
  verify_insertion.each do |result|
    puts result.inspect
  end

# arr = client.query('SELECT * from customers;')
#  puts arr 
length_query = "SELECT id,name LENGTH('#{names}') as length from customers;"
puts length_query
verify_length = client.query('SELECT * FROM customers;')
verify_length.each do |length|
puts length.inspect
end





# client names

