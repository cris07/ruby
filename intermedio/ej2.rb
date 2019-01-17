
begin
	#string = 'algo'
	#string.multi
	#a = b
	a = 3 + "Cadena"

	raise NoMethodError, "No hay un metodo definido"  	
	raise NameError, "No hay una variable definida"

	raise TypeError, "No puedes hacer operaciones con tipos de datos no compatibles"  	
	

	rescue NoMethodError
		puts "Excepcion de NoMethodError"


	rescue NameError
		puts "Excepcion de NameError"

	rescue TypeError
		puts "Excepcion de TypeError"
	
end