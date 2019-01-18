# Flujos de control y arreglos
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ejemplos de sentencias de control y manejo de arreglos
=end

unless 5<4
	puts "Esto es falso"
end

numero = gets.chomp.to_i

x = if numero==1 then "uno"
	elsif numero==2 then "dos"
	elsif numero==3 then "tres"
	else "otro"
	end

puts x

a= case
	when numero==1,numero==2 then "numero es uno o dos"
	when numero==3||numero==4 then "numero es tres o cuatro"
	else "otro"
   end

puts a

# Operador ternario, if simplificado
# condicion ? Es verdadero : Es falso
puts numero>0 ? "Es positivo" : "Es cero o negativo"

x=0

while x<=10 do
	puts "Equis vale #{x}"
	x+=1
end

until x==0
	puts "Equis vale #{x}"
	x-=1
end

for i in 1..10
	puts "i vale #{i}"
end

for i in 1..5
	for j in 1..3
		puts "i vale #{i} y j vale #{j}"
	end
end

for i in 1..10
	puts "Tabla del #{i}"
	for j in 1..10
		puts "#{i} x #{j} = #{i*j}"
	end
end

arreglo=[1,2,3,4,5,6,7,8]

puts arreglo[0]

puts arreglo[5]

arregloDos = [1,"dos",false,4]

puts arregloDos[2]

arre=[ [1,3,5,7,9] , [2,4,6,8,10] ]

puts arre[0]

puts arre[1]

p arre[0]

puts "#{arre[1]}"

puts arre[0][3]


arreglo=[1,2,3,4,5,6,7,8]

puts arreglo[-1]

arregloTres=(1..50).to_a

p arregloTres

arregloCuatro = Array.new(3,5)

p arregloCuatro

arregloCuatro[0]=2

p arregloCuatro

arregloCinco = Array.new(10){|x| x+2}

p arregloCinco

arregloDos = [1,"dos",false,4]

puts arregloDos.length

puts arregloDos.first

puts arregloDos.last

puts arregloDos.delete("dos")

p arregloDos

numeros = [1,5,3,65,3,7,3,7,2,54428,0]

numerosOrdenados= numeros.sort

p numerosOrdenados

p numeros

numeros.sort!

p numeros

frutas = ["mango", "pera", "manzana", "uva"]

p frutas

frutasDos = %w(uva mango manzana naranja pera mandarina)

p frutasDos

suma = arreglo+arregloDos

p suma

frutasTres=frutas+["kiwi"]
p frutasTres


paises = Hash.new

paises["Mexico"]=["CDMX","Edo Mex","Guadalajara","Acapulco","Cancun"]

p paises

paises["USA"] = ["Orlando","San Francisco", "New York"]

p paises["USA"]

p paises["Mexico"]

romanos={"I"=>1,
	"V"=>5
}

p romanos

for pais,ciudad in paises
	puts "En #{pais} estan las siguientes poblados: #{ciudad}"
end

for fruta in frutas
	puts fruta
end

def saludar
	puts "Hola"
end

saludar

def saludarDos(nombre)
	puts "Hola #{nombre}"
end


nombreUsuario=gets.chomp

saludarDos(nombreUsuario)

alias salu2 saludarDos

salu2(nombreUsuario)

saludarDos(nombreUsuario)

def saludarTres(nombre="extraño",edad="no se")
	puts "Hola #{nombre} y tienes #{edad}"
end

saludarTres
saludarTres(nombreUsuario)


def suma(a,b)
	a+b
end

resultado=suma(4,6)

puts resultado

def sumaDoble(a,b)
	return (a+b),((a+b)*2)
end

result, doble = sumaDoble(8,4)

puts result

puts doble

aleatorio = rand(1..20)

puts aleatorio