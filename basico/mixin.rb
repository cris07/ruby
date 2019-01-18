# Uso de modulos
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Manupilacion de modulos creados
=end

require_relative 'modulos'

Modulo.metodo

puts Math.sqrt(2)

p Modulo::CONST

n = Modulo.fact(5)

puts n

module A
	attr :atributo

	def atributo
		@atributo =1
	end

	def saludar
		puts "soy un metodo del modulo A"
	end

	def sumar
		puts "la suma de 10+15 = #{10+15}"
	end
end

module B
	def saludar
		puts "soy un metodo del modulo B"
	end
end

class C
	include B
	include A
end

c = C.new
c.saludar
c.sumar
p c.atributo