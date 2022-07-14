#* Keyword Arguments 

# What does this code print? 

# https://docs.ruby-lang.org/en/2.7.0/Numeric.html#method-i-step

5.step(to: 10, by: 3) { |value| puts value } # => 5, 8

=begin

* Discussion 

step(by: step, to: limit) { |i| block } → self

The argument named :by is a "step" value, while the argument named :to is a limit. The text below the signature shows that the "step" value indicates how much to increment the index by with each iteration, while "limit" is the largest value; if the index exceeds this value, the loop exits.

We can see that #step takes a loop in this first form, and that it will execute the block for each value in the iteration. 

* Given all this information, we can see that the code will print 5 on its first iteration, 8 on the second iteration, and then quit because 11 > 10

=end