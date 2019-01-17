require 'date'
fecha = Date.new
p fecha

fecha = Date.new 2015,8,22
p fecha

p fecha
p fecha

f= Date.new 2016,6,17
p f.monday?
p f.friday?

p f.month
p f.wday

p f-fecha
p fecha-f

fecha2= Date.parse "01/05/2016"
p fecha2

#darle formato a la hora de imprimir una fecha

p fecha2.strftime("%d/%m/%Y")
p f.day

dia = Date.today
p dia
p f-dia

q =Date.valid_date?(2015,2,29)
p q
