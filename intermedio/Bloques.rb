# Bloques de codigo
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ejemplo de bloques de codigo y su ejecucion
=end

#Bloques
 
3.upto(8){|x| print x}
 
def metodo1
    puts "Aqui inicia el metodo"
    yield
    yield
    puts "Fin del metodo"
end
 
metodo1{puts "Desde el bloque de codigo"}
 
def metodo2
    yield("Hola","alejandro")
end
 
metodo2{|cadena,nombre| puts "#{cadena} #{nombre}"}
 
 
#Alteradores de flujo
 
# break -> Cancela iteraciones
# next -> Salta al siguiente elemento
# retry -> Vuelve a empezar desde el primer elemento
# redo -> Vuelve a iniciar desde el elemento en que estaba
 
 
puts "Ejemplo de break"
 
for i in 0..5
    if i>2 then
        break
    end
    puts "Este es el #{i}"
end
 
#puts Math.sqrt ((4*3)+4)+5
 
puts "Ejemplo de next"
 
for i in 0..5
    if i<2 then
        next
    end
    puts "Este es el #{i}"
end
 
puts "Ejemplo de redo"
 
=begin
for i in 0..5
    if i<2 then
        puts "Este es el #{i}"
        redo
    end
end
=end