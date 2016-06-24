# Contar palabras
#Author:: Cristian Zuñiga

=begin

	Realizar un programa en Ruby que le pida al usuario que ingrese un texto.
	
	El programa deberá de contar cuantas veces se repiten las palabras 
	e imprimir en pantalla aquellas que hayan aparecido más de una vez.	

=end

# crear diccionario para guardar palabra => incidencias
dicc = {}

# solicitar texto al usuario
print "\n\tPrograma que cuenta palabras"
print "\n\tingresa un texto a continuaciOn: \n\t>> "

# hacer un arreglo de las palabras para analizarlas
tex = gets.chomp.split("\s") # el espacio es el delimitador de palabras

# agregar las palabras a un diccionario
tex.each{ |str|

	# preguntar si la llave (palabra) exite o no en el diccionario
	if (dicc.has_key? (str) == false) then
		# si no tiene la clave entonces la crea y asigna 1 a la incidencia
		dicc[str] = 1
	else
		# si ya tiene la clave entonces aumentar la incidencia en uno
		nvo_val = dicc[str].to_i + 1
		dicc[str] = nvo_val
	end
  }

# recorrer los elementos del diccionario e imprimir solo los que se repitan
dicc.each{ |k,v|
  	if v > 1 then
	   puts "\n\tpalabra: #{k}\tincidencias: #{v}"
	end
}







