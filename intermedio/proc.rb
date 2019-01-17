#Clase Proc

sumar = Proc.new {|x,y| puts "La suma es #{x+y}"}

restar = Proc.new do |x,y|
			puts "La resta es #{x-y}"
		end

multiplicar = Proc.new {|x,y|puts "#{x*y}"}

def calcu x,y,proc
	puts "Hagamos una operacion matemática con procs"
	proc.call x,y
end

calcu 1,2, sumar
calcu 1,2, restar


def metodo x,y,proc1, proc2, proc3=0
	puts "OPeraciones matematicas"
	proc1.call x,y
	proc2.call x,y
	
	if(proc3 != 0)
		proc3.call x,y
	end
end

metodo 5,6,sumar,multiplicar, restar





















