#Enumerables
=begin
#all?
#Regresa True si todos los elementos cumplen (True)
puts "all:",["Jake","Cris","Alejandro"].all? {|nombre| nombre.length >= 4	}
puts "all:",["manzana","pera","naranja"].all? {|frutas| frutas.length > 4	}
puts "all:",[nil,true,56].all?



#any?
#Regresa True si alguno cumple con la condicion
puts "any:",[32,44,57].any? {|num| num > 50}
puts "any:",[50,30,40].any? {|num| num >80}
puts "any:",[nil, true, false].any?



#chunk
#Separa por bloques
[5,41,25,10,7,8,9,11,13,12,22,44].chunk {|num| num.even?}.each{|numpar,arreglo| 
		p [numpar,arreglo]
}

#Collect
#regresa un nuevo arreglo con lo cumplido dentro del bloque
p (1..10).collect {|x| x**2}


#count
arreglo=[3,5,8,9,10,5,8,7,5]
puts arreglo.count
puts arreglo.count(5)
puts arreglo.count{|x| x%5==0}

#cycle

paises = ["Mexico","Brasil","Alemania"]
paises.cycle(3){|pais| puts pais }


#detect
#Espera solo la primera coincidencia
puts (1..100).detect{|x| x%4==0 and x>60}

#drop
#Borra los primeros elementos
a1 = [1,8,56,3456,45,0,2,78]
p a1.drop(3)#Borra los primeros 3

#drop_while
#Borra hsta el primer falso, y devuelve los restantes
a2 = [1,8,56,3456,45,0,2,78,3,5,7]
p a2.drop_while{|x| x.odd?}
p a2.drop_while{|x| x<10}

#each_cons
(1..10).each_cons(8) {|x| p x}

#each_slice
(1..20).each_slice(6){|x| p x}


#to_a
p (5..15).to_a


p (1..20).find_all{|x| x%4 ==0}
#Regresa todos los valores que cumplan
p (1..20).find_index{|x| x**2==16}
#Regresa todos los indices que cumplan


p ["meloso","camion","perezoso","mounstruoso"].grep (/.oso/)

p (1..15).group_by{|x| x%6}

plantas = ["rosa","girasol","crisantemo"]
p plantas.min_by{|plantas| plantas.length}

p plantas.max_by{|plantas| plantas.length}

p ["algo","cinco","murcielago","uno","abuelo","si"]	.sort_by{|planta| planta.length}
=end

p [1,4,5,20,0,48,88,5465,3].take(2)

p [1,4,5,20,0,48,88,5465,3].take_while{|x| x>0}


















































