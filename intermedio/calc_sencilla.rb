# Calculadora sencilla 
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ejemplo básico de la implementación de una calculadora
=end

#Datos (Objetos)
suma = Proc.new do |x,y| puts "#{x}+#{y} = #{x+y}" end
resta = Proc.new do |x,y| puts "#{x}-#{y} = #{x-y}" end
multi = Proc.new do |x,y| puts "#{x}*#{y} = #{x*y}" end
div = Proc.new do |x,y| puts "#{x}/#{y} = #{x.to_f/y.to_f}" end

#Lógica (controladores)
def calcu x,y, suma, resta, multi, div, opcion
	case opcion
	when "1"
		suma.call x,y
	when "2"
		resta.call x,y
	when "3"
		multi.call x,y
	when "4"
		div.call x,y
	else
		puts "Error"
	end
end

#Vistas (Comunicacion con el usuario)
loop do
	print "INgresa el primer numero: "
	x = gets.chomp.to_f
	print "Ingresa el segundo numero: "
	y = gets.chomp.to_f

	puts "1.- SUmar"
	puts "2.- Restar"
	puts "3.- Multiplicar"
	puts "4.- DIvidir"
	puts "5.- Salir"
	print "INgresa tu opcion: "
	opcion = gets.chomp

	if(opcion == "5")
		break
	end

	calcu x,y, suma, resta, multi, div, opcion

end
















