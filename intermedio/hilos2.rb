x = Thread.new{sleep(1); puts "x"; puts "y"; puts "z"}

a = Thread.new{
	#sleep(1)
	puts "a"
	sleep(2)
	puts "b"
	puts "c"
}

x.join
a.join