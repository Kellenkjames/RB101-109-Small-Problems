#* Odd

# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

=begin

* P - [Understand the] Problem

* Inputs: 
  - one integer (positive, negative, or zero)

* Outputs:
  - boolean (true or false)

* Clarifying Questions: 
  - is a floating point number i.e. 5.44 considered a valid integer value? 

* Explicit Requirements: 
  - Method returns true if the number's absolute value is odd, false otherwise

* Implicit Requirements: 
  - Assume the argument is a valid integer value (no strings, or booleans)

------------------------------------------------------------------------------

* Example / Test Cases 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

------------------------------------------------------------------------------

* D - Data Structure 

N/A 

------------------------------------------------------------------------------

* A - Algorithm 

  - write conditional logic to check if the absolute value of number is odd
    - if number % 2 == 0 (even number)
      return false 
    - else (odd number)
      return true 

=end 

# ------------------------------------------------------------------------------

#* C - Code

def is_odd?(number)
  number.abs % 2 == 1
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true