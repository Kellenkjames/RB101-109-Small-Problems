#* Optional Arguments Redux

# What will each of the 4 puts statements print? 

require 'date'

puts Date.civil
# -4712-01-01

puts Date.civil(2016) 
# 2016-01-01

puts Date.civil(2016, 5) 
# 2016-05-01

puts Date.civil(2016, 5, 13) 
# 2016-05-13

=begin

* Discussion

The documentation for Date::civil (note that is a class method) shows that its signature is:

* civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

This signature uses [] to show that all of the arguments are optional. This is only a documentation convention; the brackets should not be included in your program.

=end

Date.civil                             # everything defaults
Date.civil(2016)                       # month, mday, start use defaults
Date.civil(2016, 5)                    # mday, start use defaults
Date.civil(2016, 5, 13)                # start uses default
Date.civil(1751, 5, 13, Date::ENGLAND) # nothing defaults