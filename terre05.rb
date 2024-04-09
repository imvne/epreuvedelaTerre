# Division

arguments = ARGV                              # variable contenant les deux nombres entrés dans le terminal par l'utilisateur

dividende = ARGV[0].to_i                      # variable contenant le premier argument, transformé en integer
diviseur = ARGV[1].to_i                       # variable contenant le deuxième argument, transformé en integer

if arguments.length == 2 && dividende > diviseur && diviseur != 0   # si la liste ne contient que 2 nombres, et que le premier est plus grand que le deuxième, et que le deuxième n'est pas égal à 0
  résultat = dividende / diviseur             # alors met le résultat de la divison des deux nombres dans la variables résultat
  reste = dividende % diviseur                # et met le reste de cette division dans la variable reste
  puts "résultat: #{résultat}"                # affiche le résultat de la division
  puts "reste: #{reste}"                      # affiche le reste de la division
else
  puts "erreur"                               # sinon affiche erreur
end