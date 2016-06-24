# Adivina el número
#Author:: Cristian Zuñiga

=begin

	Realizar un juego en el que sea adivinar el número,
	el usuario ingresa un número y el juego no 
	termina hasta que el usuario adivine el número.

	El número que se tiene que adivinar, 
	se tiene que generar aleatoriamente, 
	solo al inicio del juego.

=end

# generar un número aleatorio del 1 al 10
rn = rand(1..10)
# para mostrar la respuesta
#p rn 

# inicio
# solicitar un número al usuario
puts "\n\tAdivina el nUmero del 1 al 10"
print "\n\t>> "
gs = gets.chomp.to_i
if gs > 0 and gs <=10 then 
	# comparar con el número aleatorio generado
	while gs != rn do
		print "\n\ttss.. instenta de nuevo!\n\n\t>> "
		# iterar hasta que adivine el usuario
		gs = gets.chomp.to_i	
	end
else 
	# cuando agrega número fuera del rango 1..10
	puts "\n\tnUmero invAlido!"
	exit 0
end

#gs = rn => adivinó el número
puts "\n\tFelicidades, me leIsete la mente!"
