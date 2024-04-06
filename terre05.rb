# Division

input = gets.chomp                            # variable contenant les deux nombres entrés dans le terminal par l'utilisateur

division = input.split(" ").map(&:to_i)       # déplace les deux nombres entrés dans une liste s'appelant divison, en les transformant en integer

if division.length == 2 && division[0] > division[1] && division[1] != 0   # si la liste ne contient que 2 nombres, et que le premier est plus grand que le deuxième, et que le deuxième n'est pas égal à 0
  résultat = division[0] / division[1]        # alors met le résultat de la divison des deux nombres dans la variables résultat
  reste = division[0] % division[1]           # et met le reste de cette division dans la variable reste
  puts "résultat: #{résultat}"                # affiche le résultat de la division
  puts "reste: #{reste}"                      # affiche le reste de la division
else
  puts "erreur"                               # sinon affiche erreur
end

print "\n"                                    # retour à la ligne
