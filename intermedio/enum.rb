#Enumerables
 
#all? 
 
puts "all:",["alex", "pedro", "carlos"].all? {|nombre| nombre.length>=4} 
#regresa true si todos cumplen con la condicion
 
puts "all:",["manzana", "pera", "naranja"].all? {|frutas| frutas.length>8}
 
puts "all:",[nil, true, 56].all?
 
 
#any?
 
puts "any:",[32,44,57].any? {|num| num>50}
#regresa true si alguno cumple con la condicion 
puts "any:",[50,30,40].any? {|num| num>80}
 
puts "any:",[nil, true, 56].any?
 
 
#chunk
[5,41,25,10,7,8,9,11,13,12,22,44].chunk { |num|
    num.even?
}.each{|numPar,arreglo|
    p [numPar, arreglo]
}
#separa por bloques
 
#collect
 
p (1..10).collect { |x| x**2  }
 #regresa nuevo arreglo con lo obtenido del bloque
#count
 
arreglo=[3,5,8,9,10,5,8,7,5]
puts arreglo.count
puts arreglo.count(5)
puts arreglo.count{|num| num%5==0}
 
 
#cycle
 
paises=["Mexico","Brasil","Alemania"]
 
paises.cycle(3){ |pais| puts pais  }
 
 
#detect
 
puts (1..100).detect{|x| x%4==0 and x>60}
 #espera la primera coincidencia
#drop
 
a1=[1,8,56,54,8487,45,0,2,78]
p a1.drop(3)
#borra los primeros 3 
#drop_while
 
a2=[1,3,5,7,9,11,12,13,15,17,19,0]
p a2.drop_while{|x| x.odd?}
p a2.drop_while{|x| x < 10}

 #borra hasta el primer falso, e imprime ese y los restantes
#each_cons 
 
(1..10).each_cons(6) {|x| p x}
 #caada uno de 6 en 6 subiendo 1
#each_slice
 
(1..20).each_slice(6) {|x| p x}
 #arreglos de 6 en 6 diferentes
#to_a
 
p (5..15).to_a
 #convierte a arreglo
#find_all
 
p (1..20).find_all {|x| x%4==0}
 #encuentra todas las coincidencias
p [4,5,8,7,2,19,200].find_all {|x| x>10}
 
#find_index
p (1..50).find_index {|x| x**2==160}
 
p (1..50).find_index {|x| x**2==25}
 
#flat_map
 
p [[5,6],[15,16]].flat_map {|x| x}
 
 
p [ [5,6],45,(1..2).to_a ].flat_map {|x| x*2}
 
#grep
 
p ["meloso","camion","perezoso","mounstruoso"].grep (/.oso/)
 
#group_by
 
p (1..15).group_by {|x| x%6}
 
#min_by
 
plantas=["rosa","girasol","crisantemo"]
 
p plantas.min_by{ |planta| planta.length  }
 
#minmax_by
 
p plantas.minmax_by{|planta|  planta.length}
 
#one?
 
p [1,4,5,6].one?{|num| num%5==0}
 
p [1,4,5,6].one?{|num| num%7==0}
 
p [1,4,5,6].one?{|num| num%2==0}
 
p [true,false,nil].one?
 
#none?
 
p [1,4,5,6].none?{|num| num%7==0}
 
p [nil,false].none?
 
#reject
 
p (1..50).reject {|x| (x**2).odd?}
 
#sort_by
 
p ["algo","cinco","murcielago","uno","abuelo","si"].sort_by {|palabra| palabra.length}
 
#take
 
p [1,4,5,20,0,48,88,5465,3].take(2)
 
#take_while
 
p [1,4,5,20,0,48,88,5465,3].take_while{|x| x>0}
 
#zip
 
a=[3,8,11]
b=[7,4,5]
puts
p [1,2,9].zip(a,b)
puts
p ["algo",2].zip(a,b)
puts 
 
p a.zip([2,4],[8])