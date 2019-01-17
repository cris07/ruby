puts 0.zero?

puts 1.zero?

puts 2.nonzero?

puts 5.integer?

puts "el 2 es par? #{2.even?}"

puts 1.even?

puts 3.odd?

puts 2.3.ceil

puts -1.4.ceil

puts 3.7.floor

puts -2.9.floor

puts -4.abs

puts Math::PI

puts Math::E

puts Math.sqrt(25.0)

include Math

puts PI

puts sin(PI/2)

puts cos(0)

puts tan(PI/4)

puts asin(1.0)/PI

puts sinh(0.0)

puts hypot(3,4)

require "complex"

c = Complex(0.5,1)

puts c

puts c + c

puts c*c

puts c-c

puts c.abs