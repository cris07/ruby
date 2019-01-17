nombres = ["Jose", "Pedro", "Juan", "Luis"]

nombres.each do |nombre|
	puts nombre
end


def saludarTodos(*arregloDeNombres)
	arregloDeNombres.each do |nombre|
		puts "Hola #{nombre}"
	end
end

saludarTodos("Juan", "Marco", "Ludo", "Fer", "Joddy")

saludarTodos("Arlette")

saludarTodos("Daniel","Cesar")


