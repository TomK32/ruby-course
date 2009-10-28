#!/usr/bin/env ruby

# You can try any of the following lines on its own by starting irb (interactive ruby shell)
# and execture them.
# Strings are a bunch of characters

# http://www.ruby-doc.org/core/classes/String.html
# http://www.ruby-doc.org/core/classes/Array.html


puts "Hello World"

puts "Hello World".reverse # => dlroW olleH

# oh, and any line starting with a # is a comment and won't be executed by ruby

puts "Hello World".upcase # => HELLO WORLD

puts "Hello" + "World" # => HelloWorld

text = "Hello World"

puts (text * 3).reverse # => dlroW olleHdlroW olleHdlroW olleH

# want more methods?
puts text.methods.sort.join(', ') # there are pleny more methods

text['World'] = 'Earthling'

puts text # => Hello Earthling

puts text[0] # => 72  A number, WTF???

puts text[0].chr # => H

puts text[0...4] # => Hell 

# an array
puts ['Hello', 'World'].inspect # => ["Hello", "World"]

# and a hash. notice the :hello, that's a symbol. the look more yellowish in my editor, that's
# why I love them so much
myhash = {:hello => 'world', :goodbye => 'moon'}
puts myhash.inspect # => {:hello=>"world", :goodbye=>"moon"}
puts myhash[:hello] # => world
puts myhash['hello'] # => nil (that's nothing)
