# Fractal de mandelbrot
#Author:: Cristian Zuñiga

# importar complex, para manejar números imaginarios
require 'complex'

# función para dibujar el fractal
# obtenida de: https://rosettacode.org/wiki/Mandelbrot_set#Ruby 22/06/2016 20:27 hrs
def mandelbrot(a)
  Array.new(50).inject(0) { |z,c| z*z + a }
end

# menú
# obtener el caractér para dibujar el fractal
puts "\n\tFractal de Mandelbrot"
print "\n\tingresa una cadena para dibujar el fractal: "
frac = gets.chomp

# dibujar el fractal
(1.0).step(-1,-0.05) do |y|
  (-2.0).step(0.5,0.0315) do |x|
    print mandelbrot(Complex(x,y)).abs < 2 ? frac : ' '
  end
  puts
end





