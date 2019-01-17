#!/usr/bin/ruby
require "thread"
mutex = Mutex.new

cuenta1 = cuenta2 = 0
diferencia = 0
contador = Thread.new do
	loop do
		mutex.synchronize do 
			cuenta1 += 1
			cuenta2 += 1
		end
	end
end

espia = Thread.new do
	loop do
		mutex.synchronize do 
			diferencia = cuenta1 - cuenta2
		end
	end
end

sleep 60
mutex.lock
puts "cuenta1: #{cuenta1}"
puts "cuenta2: #{cuenta2}"

puts "Diferencia: #{diferencia}"
