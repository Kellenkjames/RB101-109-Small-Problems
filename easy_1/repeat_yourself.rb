#* Repeat Yourself 

# Write a method that takes two arguments, a string, and a positive integer, and prints the string as many times as the integer indicates. 

=begin 

* P - [Understand the] Problem 

* inputs:
- one string
- one positive integer

* output:
- string (same object)

* Clarifying Questions: 
- How to handle emtpy strings?
  - same as normal strings 

* Explicit requirements: 
  - String (input) will be printed as many times as the integer indicates 

* Implicit requirements: 
  - if the string is an empty string, the result should be handled the same way 

------------------------------------------------------------------------------

* E - Examples / Test Cases 

* Example 1 
Inputs: 'Hello', 3

Output: 
Hello 
Hello
Hello 

* Example 2 
Inputs: 'Go to the Store', 2

Output:
'Go to the Store'
'Go to the Store'

------------------------------------------------------------------------------

* D - Data Structure 

N/A  

------------------------------------------------------------------------------

* A - Algorithm

# Algorithm
    - intialize a counter variable 
    - create a while loop to iterate until counter is less than integer (input)
      - loop through and print 'string' on each iteration 
      - increase counter variable by 1 on each iteration 
      - loop ends when counter variable exceeds integer (input)

=end 

# ------------------------------------------------------------------------------

#* C - Code 

def repeat_me(string, integer)
  counter = 0

  while counter < integer
    puts string
    counter += 1
  end 

end 

repeat_me("Hello", 2)
# repeat_me("Go to the Store", 2)






