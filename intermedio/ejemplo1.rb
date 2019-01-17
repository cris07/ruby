#Alteradores de flujo

#break -> cancela iteraciones
#next -> Salta al siguiente elemento
#retry -> Vuelve a empezar desde el primier elemento
#redo -> Vuelve a iniciar desde el ultimo elemento

puts "Ejemplo de break"

for i in 0..5
	if i>2 then 
		break
	end
	puts "Este es el #{i}"
end

puts  "Ejemplo de next"

for i in 0..5 
	if i <= 2 then
		next
	end
	puts "Este es el #{i}"
end


puts "Ejemplo de redo"
for i in 0..5 
	if i >= 2 then
		puts "Este es el #{i}"
		redo
	end
end







