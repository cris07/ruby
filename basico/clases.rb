# Ejemplos con POO
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Diferentes ejemplos con Programacion Orientada a Objetos POO
	 	manejo de clases, herencia, instanciacion, etc
=end

class NombreClase
	#atributos
	#metodos
end

class Vehiculo
	def encendido
		puts "el vehiculo se esta encendiendo"
	end

	def apagar
		puts "el vehiculo se esta apagando"
	end
end

#instancia de un objeto

nombreObjeto = NombreClase.new

carro = Vehiculo.new

#accesores de atributos

@atributos

attr_accessor :nombreAtributo  # tenemos permiso de 	escritura y lectura

attr_reader :nombreAtributo #permiso de lectura

attr_writer :nombreAtributo  #permiso de escritura


class Persona
	@nombre
	@edad

	attr_accessor :nombre, :edad
	def saludar
		puts "Hola mi nombre es #{@nombre} y tengo #{@edad} años"
		
	end
end 

persona = Persona.new
persona.nombre="Alejandro"
persona.edad=21

persona.saludar



class Persona
	def getNombre
		@nombre
	end
	def edad
		@edad
	end

	def setNombre=(valor)
		@nombre=valor
	end

	def setEdad=(valor)
		@edad=valor
	end
end

persona = Persona.new
persona.setNombre="Juan"
persona.setEdad=18

puts "hola mi nombre es #{persona.getNombre} y tengo #{persona.edad} años"

class Persona
	attr_accessor :nombre, :edad
	def initialize(nombre,e)
		@nombre,@edad = nombre,e
	end

	def saludar
		puts "hola mi nombre es #{@nombre}"
	end
end

persona = Persona.new("Arlette",21)
persona.saludar

# Herencia

class SubClase < SuperClase
	#Sentencias
end

class Mamifero
	def respirar
		puts "inhalar, exhalar"
	end

	def comer
		puts "comiendo"
	end
	private:listaDeMetodos,:m2,... 
end

class Gato < Mamifero
	def maullar
		puts "Meow"
	end
end

akira=Gato.new
akira.respirar
akira.comer
akira.maullar

=begin
comentarios en parrafos	
=end

# sobre escritura de metodos
class Ave
	def asear
		puts "estoy limpiando mis plumas"
	end

	def volar
		puts "estoy volando"
	end
end

class Gallina < Ave
	def volar
		puts "yo no puedo volar D:"
	end
end

paloma=Ave.new
gallina=Gallina.new
paloma.asear
gallina.asear
paloma.volar
gallina.colar


# uso de 'super'

class Vehiculo
	attr_accessor :ruedas, :velocidades, :asientos, :puertas

	def initialize(ruedas,asientos)
		@ruedas=ruedas
		@asientos=asientos
		@velocidades
		@puertas
	end


end

class Bicicleta < Vehiculo
	def initialize(velocidades)
		super(2,1)
		@velocidades=velocidades
		@puertas=0
	end
end

class Carro < Vehiculo
	def initialize(puertas)
		super(4,5)
		@puertas=puertas
		@velocidades=4
	end
end

bici=Bicicleta.new(1)
puts "las caracteristicas de la bicicleta son:"
puts bici.ruedas
puts bici.velocidades

carro=Carro.new(4)
puts "las caracteristicas del carro son"
puts carro.velocidades
puts carro.asientos