# Manejo de excepciones
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ejemplos de excepciones en tiempo de ejecucion
=end

=begin
def mostrarExcepcion
	puts "Estoy haciendo el metodo"
	raise "Ha ocurrido un error"#runtime error
	puts "Esto se ejecuta?"
end


#mostrarExcepcion

def excepDivision(x)
	raise ArgumentError,"No puedes poner eso" unless x.is_a? String
	1.0/x
		
end

puts excepDivision('pepito')


def raiseConRescue
	begin
		puts "Hasta aqui todo va bien"
		raise "Paso algo malo :("
		puts "Me mostrare?"
	rescue
		puts "Arreglando el error"
	end

	puts "Yo si me imprimo :D"
end

raiseConRescue


begin 
	raise "Error"
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
end
=end

def ejemplo(x)
	begin 
		puts "hola hola"
		raise ArgumentError,"No puedes poner eso"unless x.is_a? Numeric
		1.0/x
		raise "Error"

	rescue RuntimeError
		puts "Error de tipo runtime"

	rescue ArgumentError
		puts "Error de tipo argument"
	else
		puts "Cualquier otra excepcion"
	end
end

ejemplo(5)