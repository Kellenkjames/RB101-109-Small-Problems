#* List of Digits 

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number. 

=begin

* P - [Understand the] Problem

#* Inputs  
  - One argument (positive integer)

#* Outputs   
  - List of the digits in the number 

#* Clarifying Questions: 
  - Do we need to handle any other inputs outside of positive integers? 

#* Explicit Requirements: 
  - Method takes one argument (must be a positive integer) and returns a list of the digits  

#* Implicit Requirements: 
  - List of digits should be stored in an array 

------------------------------------------------------------------------------

* E - Examples / Test Cases 

p digit_list(12345) == [1, 2, 3, 4, 5]                   # => true
p digit_list(7) == [7]                                            # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0]            # => true
p digit_list(444) == [4, 4, 4]                              # => true

------------------------------------------------------------------------------

* D - Data Structure 

[] => Array 

------------------------------------------------------------------------------

* A - Algorithm 

- create variable and store empty array []
  - create variable i.e. numbers_arr 
    - call split method on number arg i.e. 12345 => ["1", "2", "3", "4", "5"] and assign to numbers_arr
- create a counter variable 
- create loop to iterate over numbers_arr
  - create a varaible for current_num
  - use counter as the arr index and convert each string to integer 
  - push current_num to digits arr
  - increment counter by 1
  - break out of loop if counter is equal to arr size
- return arr

=end 

#------------------------------------------------------------------------------

#* C - Code 

def digit_list(number) 
  digits = []
  numbers_arr =  number.to_s.split('')
  counter = 0 

  loop do 
    current_num = numbers_arr[counter].to_i
    digits << current_num
    counter += 1
    break if counter == numbers_arr.size
  end 
  
  digits
end 

p digit_list(12345) == [1, 2, 3, 4, 5]                   # => true
p digit_list(7) == [7]                                            # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0]            # => true
p digit_list(444) == [4, 4, 4]                              # => true

