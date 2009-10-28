#!/usr/bin/env ruby

# A class is a wireframe with methods of which you can instanciate single objects
# About everything in ruby is a Class or object, we've already used them and now
# it's time to write our own.

class Human
  attr_accessor :size, :weight, :sex
  def initialize(sex, size, weight)
    @self = sex
    @size = size
    @weight = weight
  end
  def male?
    @sex == :male
  end
  def female?
    @sex == :female
  end
  def other?
    @sex != :female && @sex != :male
  end
  def height_in_inch
    @size * 0.393700787 if @size
  end
  def <(other)
    return @size < other.size
  end
  def >(other)
    ! this < (other)
  end
end

tom = Human.new(:male, 193, 98)
jerry = Human.new(:male, 185, 75)

puts tom.inspect

puts "Tom's height of %scm is %s in inch" % [tom.size, tom.height_in_inch]
puts "Tom's %s a girl" % (tom.female? ? '' : 'not')

puts "Tom is %s than Jerry" % (jerry < tom ? 'taller' : 'smaller')