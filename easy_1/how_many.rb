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

- create an empty hash
- create a counter variable
- iterate over unique values arr

=end 

# ------------------------------------------------------------------------------

#* C - Code 

def count_occurrences(vehicles)
    counter = 0
  
    vehicle = vehicles.uniq
    
    loop do 
      current_vehicle = vehicle[counter]
      occurrences = vehicles[counter].count(current_vehicle)
      
      puts "#{current_vehicle} => #{occurrences}"
      
      counter += 1
      break if counter == vehicle.size 
    end 
    
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)