#* Default Arguments in the Middle 

# Use the ruby documentation to determine what this code will print. 

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]

# https://docs.ruby-lang.org/en/2.7.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

#* Solution: In this exercise, 4, 5 and 6 are assigned to the positional arguments a, b and d. Note that 5 overrides the default value for b, but c is not set to any of the listed values. c, instead, is assigned its default value, 3. Thus, when the results are printed, we see the results shown in our solution.

