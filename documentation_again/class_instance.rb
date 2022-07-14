#* Class and Instance Methods

# Locate the ruby documentation for methods File::path and File#path. How are they different?

#* Solution: Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method. 

# https://docs.ruby-lang.org/en/2.7.0/File.html#method-c-path 

#* Class methods are called on the class, while instance methods are called on objects. Thus: 

# calls the class method File::path since we're calling it on the File class, while: 
puts File.path('bin') # => "/bin/"

# calls the instance method File#path since we're calling it on an object of the File class, namely F.
f = File.new('my-file.txt')
puts f.path # => "my-file.txt"

# Pay attention when reading the documentation; make sure you are using a class method when you need a class method, and an instance method when you need an instance method.


