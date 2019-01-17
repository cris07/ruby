def funcion1
	i=0
	while i<=2
		puts "Desde la funcion 1 la hora es: #{Time.now}"
		sleep(2)
		i+=1
	end
end

def funcion2
	j=0
	while j<=2
		puts "Desde la funcion 2 la hora es: #{Time.now}"
		sleep(1)
		j=j+1
	end 
end

puts "Iniciamos a las #{Time.now}"

hilo1 =Thread.new{funcion1}

hilo2 =Thread.new{funcion2}

hilo1.join
hilo2.join

puts "Terminamos a las #{Time.now}"
