# Manejo de archivos
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Abre/Crea un archivo para escribir en él
=end

# Abre archivo, si no existe lo crea
archivo = File.open("nuevoArchivo.txt","a+")

# Escribe en el archivo
archivo.write("Hola estoy escribiendo desde mi programa en Ruby\n")
archivo.write("Otra linea")
archivo.puts("Otra linea mas")
archivo.puts("Otroa linea maaaaaaaaaaas")