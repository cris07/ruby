#puts //.class
=begin
re1 = /Ruby/.match("Este es el curso de Ruby intermedio")

p re1 
p re1.class



re2 = "Este es el curso de ruby intermedio"=~/Ruby/
p re2
p re2.class

=end

cadena = "Mi celular es (55) 123-4567"

expresion_regular = /\(([0-9]{2})\)\s*([0-9]{3})\-(\d{4})/

match1 = expresion_regular.match(cadena);

puts match1

puts match1[0]

puts match1[1]
puts match1[2]
puts match1[3]

puts match1[1]+match1[2]+match1[3]

correo = "cris07_fi@hotmail.com"

expReg = /([0-9a-zA-z]+[\-\.\_\+\&]*)[0-9a-zA-Z]+@(hotmail|gmail|yahoo)(\.com)/

puts expReg.match(correo)