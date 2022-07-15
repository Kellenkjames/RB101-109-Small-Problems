#* Down the Rabbit Hole 

# In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

# https://ruby-doc.org/stdlib/libdoc/psych/rdoc/Psych.html

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')