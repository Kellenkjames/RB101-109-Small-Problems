#* Mandatory Blocks 

# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

# https://docs.ruby-lang.org/en/2.7.0/Array.html#method-i-bsearch

a = [1, 4, 8, 11, 15, 19]

value = a.bsearch { |num| num > 8 }
puts value
