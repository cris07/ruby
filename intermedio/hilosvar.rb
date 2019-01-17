contador = 0
arreglo=[]

10.times do |i|
	arreglo[i] = Thread.new{
		sleep(rand(1..5)/10.0)
		Thread.current["cuentaDesdeelhilo"] = contador
		contador+=1
	} 
end

arreglo.each{|hilo| hilo.join; print hilo["cuentaDesdeelhilo"],","}

puts "contador=#{contador}"
