# Uso de Time
# Author:: Cristian Zuñiga

# encoding: utf-8

=begin 
	 	Creacion de Time, presentacion de sus atributos y 
	 	formatos
=end

tiempo = Time.new
puts tiempo.inspect

t = Time.now
puts t.inspect

puts t.year #año
p t.month #mes
p t.day #dia
p t.wday #dia de la semana 0-8 0=Domingo
p t.yday # 365
p t.hour # 24 horas
p t.min #minutos
p t.sec 
p t.usec #microsegundos
p t.zone #Zona horaria

p t.to_s
p t.ctime
p t.localtime # = t.inspect

p t.strftime("%A_%d_%m_%Y %X")
p t.strftime("%d")
p t.strftime("%a")


p t.strftime("%c")
p t.strftime("%C")  
p t.strftime("%H") 
p t.strftime("%X")

p t.strftime("%d_%m_%Y %X")
p t.strftime("%W")  
