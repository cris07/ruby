# Agenda
#Author:: Cristian Zuñiga

=begin

	Realizar una agenda con los siguientes requerimientos:

	Realizar un programa en Ruby en donde se puedan agregar contactos 
	y buscar contactos. Los contactos deberán de estar guardados en un 
	archivo de texto con extensión .txt

 	Modelar la clase Contacto con sus respectivos atributos y métodos

=end

# clase Contacto
class Contacto

	# atributos
	@nombre
	@numero_tel
	@correo

	# métodos

	# Agregar un nuevo contacto
	def initialize(dat=[])
		@nombre, @numero_tel, @correo = dat[0], dat[1], dat[2]

		if dat.length == 3 then 
			# agregar contacto al archivo
			#nvo_contacto = @nomb + "|" + @num_t + "|" + @correo
			nvo_contacto = dat.join(" ")
			#nvo_contacto.gsub(" ", "|")

			arch = File.open("contactos.txt", "a")
			arch.puts(nvo_contacto)
			arch.close()
			puts "Contacto agregado!"
		elsif dat.length == 0 then
			#print "crea instancia de Contacto"
		else 
			raise Exception, "Datos incompletos!"
		end
			
	end

	# Buscar un contacto
	def buscar_contacto(arg)
		# bandera para saber si se encontró el contacto
		b = 1 
		mt = Thread.current # obtenemos el hilo en ejecución
		print "\nBuscando contacto...\n"

		arch =  File.open("contactos.txt", "r")
		contactos = arch.read.split("\n") # arreglo de todos los contactos
		contactos.each do |contacto|	# cada contacto individual
			busqueda = contacto.split(" ")
			if (busqueda[0] == arg)
				puts "\n", contacto
				b = 0 # si se encontro
				break 
				#puts "Fin de la bUsqueda"
				#arch.close()
			elsif (!arch.eof?) then
				arch.close()
			else	
				print "...\t "
				mt.send(:sleep, 1)
				
			end # fin if
		end  # fin do

		if (b == 0) then
			arch.close()
		else
			puts "\nContacto no encontrado... =("
		end
	end # fin buscar_contacto

end # fin clase Contacto



# Menú con opciones

# Clase Agenda
class Agenda
	# atributos

	# métodos
	def mostrar_menu
		
		# variables locales del método mostrar_menu
		opt = [" nombre del contacto: ", " numero de telEfono: ", " correo electrOnico: "]
		datos = [nil, nil, nil]
		nomb_bus = nil
		
		# menú para el usuario 
		print "\n.Contactos.\n"

		# preguntar si quiere agregar o buscar un contacto
		print "\nElegir una opciOn para agregar (a) o buscar (b) un contacto: "
		sel_input = gets.chomp() # leer opción

		# ejecutar acción
		case sel_input

			when "a" then # agregar contacto
				# capturar datos
				for i in 0..2 do
					print "ingresa ", opt[i]
					datos[i] = gets.chomp
				end

				# agregar contacto
				cto = Contacto.new(datos)
				# borrar referencia
				cto = nil

				# eliminar datos temporales
				datos = [nil, nil, nil]

			when "b"  then 
				print "\nIngresa el nombre del contacto a buscar: "
				nomb_bus = gets.chomp
				cto = Contacto.new() 
				cto.buscar_contacto(nomb_bus)
				cto = nil
				nomb_bus = nil
		end # fin case
	end # fin mostrar_menu
end # fin clase Agenda

# iniciar instancias y menú
agn = Agenda.new
agn.mostrar_menu