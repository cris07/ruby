# Calculadora básica
#Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
 	Calculadora que solicita dos números y la operación deseada.
 	además de mostrar el resultado.
=end

# función principal
def menu
		# solicitar datos
		puts "\n\t.Calculadora básica.\n\n"
		puts "Ingresa dos numeros a continuación:"
		print "primer número: "
		a = gets.chomp.to_f
		print "segundo número: "
		b = gets.chomp.to_f

		# seleccionar operación
		puts "\nAhora puedes elegir una opción entre las siguientes:"
		puts "\n\t (s) sumar\n\t (r) restar\n\t (m) multiplicar\n\t (d) dividir \n\t (mod) módulo\n\t (e) para salir"
		print "> "
		sel_usr = gets.chomp


		# realizar operación y mostrar resultado
		case sel_usr
			when "s" then 
				puts "La suma es: #{a} + #{b} = #{a+b}"
				menu
			when "r" then 
				puts "La resta es: #{a} - #{b} = #{a-b}"
				menu
			when "m" then 
				puts "La multiplicación es: #{a} * #{b} = #{a*b}"
				menu
			when "d" then 
				puts "La división es:  #{a} / #{b} = #{a/b}"
				menu
			when "mod" then 
				puts "El módulo es:  #{a} mod #{b} = #{a%b}"
				menu
			when "e" then 
				exit 0
			else 
				puts "Opción incorrecta!"
				menu
		end # fin case
end # fin menu

# llamada al menu 
menu
 
