# Modulos
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Creacion de modulos para calcular el numero factorial
=end

module Modulo
	CONST=4

	def Modulo.metodo
		puts "metod del modulo"
	end

	def Modulo.fact(n)
		if n==0
			1
		else
			n * fact(n-1)
		end
	end
end

