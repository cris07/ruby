
def fibo(n)
	if n <= 1
		n
	else
		fibo(n-1) + fibo(n-2)
	end
end

puts "ingresa un numero"
numero = gets.chomp.to_i
puts fibo(numero)
