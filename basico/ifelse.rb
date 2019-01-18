# Sentencia if-else
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ejemplos de sentencia if-else
=end

uno=10
dos=20

if uno<dos then
	puts "Uno es menor que dos"
end

if (uno%5==0 && dos%5==0)
	puts "Uno y dos son multiplos de cinco"
end


dos=43
if uno%5==0
	puts "Uno es multiplo de cinco"
	if dos%5==0
		puts "Dos es multiplo de cinco"
	end
end

if 10>20
	puts "10 es mayor que 20"
else
	puts "10 no es mayor que 20"
end

if 5>7
	puts "Cinco es mayor a siete"
elsif 6>0
	puts "Seis es mayor a cero"
else
	puts "No se cumplieron las anteriores"
end
	

x=0
a=3
b=2
if x>0
	puts "Equis es numero positivo y vale #{x}"
	c=a*b
elsif x<0
	puts "Equis es numero negativo y vale #{x}"
	c=a+b
else
	puts "Equis es cero y vale #{x}"
	c=a-b
end
	
puts c

numero = gets.chomp

puts numero

numeroYaCasteado=numero.to_i

puts "El numero leido fue #{numeroYaCasteado-10} y se leyo bien"

puts "Hola"

a = gets.chomp.to_i

case 
	when a>0 then
		puts "El numero a es positivo"
	when a<0 then
		puts "El numero es negativo"
	else
		puts "El numero es cero"
end

case a
	when 1..10
		puts "A esta entre 1 y 10 y vale #{a}"
	when 11..50
		puts "A esta entre 11 y 50 y vale #{a}"
	else
		puts "A no esta dentro de los rangos considerados y vale #{a}"
end

letra = gets.chomp

case 
	when letra=="a"
		puts "Es vocal"
	when letra=="e"
		puts "Es vocal"
	when letra=="i"
		puts "Es vocal"
	when letra=="o"
		puts "Es vocal"
	when letra=="u"
		puts "Es vocal"
	else
		puts "Es consonante"
end