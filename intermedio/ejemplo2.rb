#Bloques de codigo

def metodo1
	puts "Aqui inicia el metodo"
	yield
	yield
	puts "Fine del metodo"
end

metodo1{puts "Desde el bloque de codigo"} 

def metodo2
	yield("hola","alejandro","Jake")
end

metodo2{|cadena,nombre| puts "#{cadena} #{nombre}"}