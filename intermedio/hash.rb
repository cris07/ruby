def suma num1, num2, opciones = {}
	sum = num1 + num2
	sum = sum.abs if opciones[:absoluto]
	sum = sum.round(opciones[:presicion]) if opciones[:redondear]
	return sum
end

puts suma -1.5467, -549.98
puts suma -1.5467, -549.98, absoluto: true
puts suma -1.5467, -549.98, absoluto: true, redondear: true, presicion: 1