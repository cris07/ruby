puts Thread.main

hilo1 = Thread.new{sleep(10)}
puts
hilo1.join
Thread.list.each{|hilo| p hilo}
puts ">>>>>>>>>>>>"
puts "Hilo actual:"+Thread.current.to_s

puts

hilo2 = Thread.new{sleep(10)}
hilo2.join
Thread.list.each{|hilo| p hilo}
puts "<<<<<<<<<<<"
puts "Hilo actual:"+Thread.current.to_s




Thread.kill(hilo1)
Thread.pass

hilo3 = Thread.new{
	sleep 30
	Thread.exit
}

hilo3.join

Thread.kill(hilo2)
Thread.list.each{|hilo| p hilo}
Thread.exit