# Lectura de archivo
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Ver el contenido de un archivo
=end

archivo = File.open("nuevoArchivo.txt","r")

p archivo.read.split("\n").sort


#lineas = archivo.readline

#p lineas

#p archivo.readline

