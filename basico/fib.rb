# Calculadora del numero de Fibonacci
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Calcula el numero de fibonacci a partir de un numero dado
=end
def fibo(n)
	if n <= 1
		n
	else
		fibo(n-1) + fibo(n-2)
	end
end

puts "ingresa un numero"
numero = gets.chomp.to_i
puts fibo(numero)
