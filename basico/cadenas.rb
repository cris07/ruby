# Ejemplos con cadenas
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Diferentes ejercicios con cadenas
=end

# creacion
cadena = "Facultad"

# muestra cadena
puts cadena

# concatenacion
cadena.concat(" de Ingeniería")
puts cadena

# insersion en una posicion determinada
cadena.insert(8," maravillosa ")
puts cadena

#Slice -> indice, cantidadDeCaracteres 
puts cadena.slice(9,4)
puts cadena
cadena.slice!(9,4)
puts cadena

# comprueba igualdad de cadenas
puts "Hola".eql?("Hola")

# propiedades de longitud
puts "cadena".length
puts "cadena".size
puts "".empty?
puts "cadena".empty?
puts "Ruby".index('b')
puts "Ruby".index("a")
puts "Esta es una cadena".index("a",7)

# propiedades de la cadena
puts "Hola".start_with?("Ho")
puts "Hola".end_with?("la")
puts "Esta es otra cadena".include?("otra")

# operadores
palabras="Esta es una cadena con varias palabras".split
p palabras
palabrasDos = "Con otra cadena".split("o")
p palabrasDos
letras="Palabra".split("")
p letras

# modificacion de cadenas
arreglo= "cadena cadena cadena cadena".partition("ade")
p arreglo
puts "Hola".sub("l","L")
puts "manzana".sub("a","A")
puts "manzana".gsub("a","A")
puts "unam".upcase
puts "UNAM".downcase
puts "facultad".capitalize
puts "vAmOs AmEriCa".swapcase
puts "      hola a todos     ".strip
puts "      hola a todos     ".lstrip
puts "      hola a todos     ".rstrip
puts "esta cadena tiene varias palabras en ella".tr("aeiou","AEIOU")
puts "si".tr("s","S")
puts "si".sub("s","sh")
puts "esta cadena tiene varias palabras en ella".count("aeiou")

