# Pair ou impair ?

nombre = gets.chomp

divisible = nombre / 2

if divisible.is_a? Integer
   puts "pair"
elsif divisible.is_a? Float
   puts "impair"
else
   puts "Tu ne me la mettra pas à l'envers"
end

# idée de base mais pas possible car ruby interprète l'élément donnée dans le terminal comme une chaine de caractères, même si c'est un nombre