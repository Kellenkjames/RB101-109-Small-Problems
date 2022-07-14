#* Parent Class:

# Use irb to run the following code: 

# How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

s = 'abc'
puts s.public_methods(false).inspect 

=begin

* Discussion: 

If you look at the String documentation, you won't find any mention of #public_methods. However, it is clearly available: it runs in our example. How is that? Where do you need to go to find the documentation for #public_methods?

Since #public_methods is not described in the String documentation, we obviously must look elsewhere. One of two additional places you can look for method descriptions is in the documentation for the parent. Go ahead and click Object in the Parent box to go to the Object class documentation.

* public_methods was found in the parent class "Object"

* Once you have the documentation in front of you, you can see that #public_methods takes an optional argument all. If that value is true or omitted, it returns a list of all public methods available to the object (our s String in this case); if all is false, #public_methods limits the output to just those methods in the object that called #public_methods; for our purposes, this means just the methods defined directly in the String class.

all paramter = optional 

=end 

