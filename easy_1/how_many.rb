#* How Many? 

# Write a method that counts the number of occurrences of each element in a given array. 

=begin

* P - [Understanding the] Problem 

#* Inputs: 
  - array 

#* Outputs:
  - string  

#* Clarifying Questions: 
  - Can we assume that every element in the arr is a string? 
  - Can we assume the final output is a string, not a hash? 

#* Explicit Requirements: 
  - Count the number of occureneces of each element in a given array 

#* Implicit Requirements: 
  - The words in the array are case-sensitive: 'suv' != 'SUV'

------------------------------------------------------------------------------

* E - Examples / Test Cases

car => 4
truck => 3
SUV => 1
motorcycle => 2

------------------------------------------------------------------------------

* D - Data Structure 

[] => Array 

------------------------------------------------------------------------------

* A - Algorithm 

- call .uniq method on arr and store values to variable "vehicle"
- create variable "counter" and set to 0 
- create a loop to iterate over values:
    - create a current_vehicle variable and assign to index of "vehicle" arr 
    - create a occurences variable and "count" of vehicles arr - using index as argument
    - print the current vehicle and number of occurences 
    - increment counter by 1
    - break out of loop if counter is equal to arr size of vehicles "uniq" values i.e. ['car', 'truck', 'SUV', 'motorcycle']
  end 

=end 

# ------------------------------------------------------------------------------

#* C - Code 

def count_occurrences(vehicles)

  vehicles.each { |vehicle| vehicle.downcase! }
  
  vehicle = vehicles.uniq
  counter = 0
  
  loop do 
      current_vehicle = vehicle[counter]
      occureneces = vehicles.count(vehicle[counter])
      
      puts "#{current_vehicle} => #{occureneces}"
      
      counter += 1
      break if counter == vehicle.size
    end 

end 

vehicles = [
  'car', 'car', 'truck', 'car', 'suv', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)

# Further Exploration 

#* Try to solve the problem when words are case insensitive, e.g. "suv == SUV"