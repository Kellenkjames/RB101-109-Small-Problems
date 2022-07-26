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

{} => Hash  

------------------------------------------------------------------------------

* A - Algorithm 

- create an empty hash {} i.e. occurences 
- call each method on arr and downcase each element (destructively)
- iterate over each unique element 
    - create a new key-value pair in occurences 
    - assign unique element as 'key'  
    - assign Array#count of element in array as 'value'
  - iterate over occurences hash 
    - set two block parameters i.e. element, count
  - print the desired output i.e. car => 4

=end 

# ------------------------------------------------------------------------------

#* C - Code 

def count_occurrences(vehicles)
  occurences = {}

  vehicles.each { |element| element.downcase! }

  vehicles.uniq.each do |element|
    occurences[element] = vehicles.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end 
  

end 

vehicles = [
  'car', 'car', 'truck', 'car', 'suv', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)