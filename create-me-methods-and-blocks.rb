#!/usr/bin/env ruby

# Methods are some code with a name that you can call as often as you want without
# writing the code over and over and over again

def sanitize(text)
  text.squeeze
  text.capitalize!
  text.gsub!('&', '&amp;')
  text.gsub!('<', '&lt;')
  text.gsub!('>', '&gt;')
  return text
end

puts "Some <i>HTML</i> in my text"

puts sanitize("Some <i>HTML</i> in my text")


# Let's have a look at an alternative, lambda and blocks.
# They are used as methods but are less formal, they don't have a name and you often
# don't use them at other places.
%w(1 2 3 4 5).each{|d| puts "%d is %s" % [d, d.to_i.even? ? 'even' : 'odd'] }

grades = {"tom" => 5, "lisa" => 1, "bart" => 6, "jerry" => 2}

puts (grades.select{|student, grade| grade < 3}).inspect # => [[:lisa, 1], [:jerry, 2]]
grades.each do |student, grade|
  if grade > 4
    puts student + " has to work harder"
  elsif grade > 1
    puts student + " has shown great potential"
  elsif grade == 1
    puts student + " has received a power-up"
  end
end
