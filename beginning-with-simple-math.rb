#!/usr/bin/env ruby

# We'll do some simple maths here, notice a interesting difference in ruby
# to most programming languages and we will count to ten. thrice
# http://www.ruby-doc.org/core/classes/Fixnum.html
# http://www.ruby-doc.org/core/classes/Float.html

puts 2 + 5 # => 7, of course

puts 1.0 / 2 # => 0.5

puts 1 / 2 # => 0, yes zero, null, nothing the great emptiness when everyone has left your party

puts "The class of (1/2) is %s" % (1 / 2).class # => Fixnum
puts "The class of (1/2.0) is %s" % (1 / 2.0).class # => Float

# there are plenty ways to count to ten
# all => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
puts 1.upto(10).to_a.join(', ') 
puts (1..10).to_a.join(', ')
puts (1...11).to_a.join(', ')

# and now only the odd ones
# all => 1, 3, 5, 7, 9
puts 1.step(10,2).to_a.join(', ')                
puts (1..10).to_a.select{|d| d.odd? }.join(', ')
puts %w(1 3 5 7 9).join(', ')

# what else you might need?
puts 13 % 5 # => 3
puts 13 / 5 # => 2 (not unexpected I hope)


# additional methods for a Float
puts ((1.0).methods - 1.methods).join(', ') # => nan?, infinite?, finite?

# and additional methods for a Fixnum
puts (1.methods - (1.0).methods).join(', ') 
# => odd?, <<, &, >>, to_sym, ord, next, even?, downto, |, size, ~, times, ^, upto, pred, succ, chr, id2name, []


# so there's no "odd" in Float? :(
puts 5.3.odd # => NoMethodError: undefined method ‘odd’ for 5.3:Float
