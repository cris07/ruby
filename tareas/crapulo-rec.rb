# Crápulo de un número de manera recursiva
#Author:: Cristian Zuñiga

# lambda para calcular el crápulo del número
krap = ->(n){
	# si la división entre 10 es exacta, se retorna el módulo de dicha división
	# para obtener el dígito
	if (n/10 == 0) then
		return n%10
	else # en caso contrario se suma el modulo con el crápulo de la división
		return n%10 + krap.call(n/10)	
	end
}

# solicitar el numero entero
puts "\n\tCrApulo de un nUmero"
print "\n\tingresa un nUmero positivo para calcular su crApulo: "
n = gets.chomp.to_i.abs # si ingresa un número negativo lo convierte en positivo

# calcular el crápulo del número
r = krap.call(n) 

# mostrar resultados
puts "\n\tel crApulo de #{n} es: #{r}"

# mientras el resultado del crápulo sea mayor a 10 se continua 
# obteniendo el crápulo del resultado
while r > 9 do
	tmp = r
	r = krap.call(tmp)
	# mostrar resultados
	puts "\n\tel crApulo de #{tmp} es: #{r}"

end