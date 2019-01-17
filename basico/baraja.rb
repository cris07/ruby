def sacarCarta
  palos = %w[ corazones treboles picas diamantes]
  numero = %w[ A 2 3 4 5 6 7 8 9 10 J Q K ]
 
  #Quiero una carta aleatoria que tiene:
  #  -un palo aleatorio
  #  -un número aleatorio
 
  #palo aleatorio
  num = palos.length
  palo_aleat = rand(num)
 
  #numero aleatorio
  num_aleat = rand(numero.length)
 
  puts numero[num_aleat] + ' de ' + palos[palo_aleat] 
end
 
#una carta aleatoria
sacarCarta
 
#10 cartas aleatorias
10.times do 
  sacarCarta
end
