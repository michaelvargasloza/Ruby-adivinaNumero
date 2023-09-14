# Generar un número aleatorio entre 1 y 100
numero_secreto = rand(1..100)

puts "¡Bienvenido a Adivina el Número!"
puts "Estoy pensando en un número entre 1 y 100."

intentos = 0
adivinado = false

while !adivinado
  print "Adivina el número: "
  intento = gets.chomp.to_i
  intentos += 1

  if intento < numero_secreto
    puts "Demasiado bajo. Intenta de nuevo."
  elsif intento > numero_secreto
    puts "Demasiado alto. Intenta de nuevo."
  else
    adivinado = true
  end
end

puts "¡Felicitaciones! Adivinaste el número #{numero_secreto} en #{intentos} intentos."