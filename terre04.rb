# Pair ou impair ?

input = gets.chomp                                  # variable contenant l'élément entré dans le terminal par l'utilisateur

if  input.match?(/^-?\d+$/)                         # si l'élément entré est un nombre entier, négatif ou non 
    nombre = input.to_i                             # transforme la chaine de caractères en un integer
    if nombre % 2 == 0                              # si la divison nombre / 2 à pour reste 0
        puts "pair"                                 # alors affiche que c'est un nombre pair
    else
        puts "impair"                               # sinon affiche que c'est un nombre impair
    end
else                                                # si l'élément entré n'est pas un nombre entier, négatif ou non 
    puts "Tu ne me la mettra pas à l'envers"        # alors affiche ceci
end