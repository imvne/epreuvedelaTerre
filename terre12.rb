# 12 to 24

argument = ARGV[0]


if argument =~ /^(\d{1,2}):(\d{2})(am|pm)$/i                 # si l'argument donné est deux nombres composés de 1 à 2 chiffres (séparés par deux points) et d'un am ou un pm
    heures = $1.to_i                                         # attribue le premier nombre composé de 1 à 2 chiffres à la variable heures
    minutes = $2.to_i                                        # attribue le deuxième nombre composé de 2 chiffres à la variable minutes
    meridien = $3

    if heures >= 1 && heures <= 11 && meridien == "am"       # si l'heure donnée se situe entre 1am et 11am
        puts "#{heures}:#{minutes}"                          # affiche les mêmes nombres sans le AM
    elsif heures >= 1 && heures <= 11 && meridien == "pm"    # si l'heure donnée se situe entre 1pm et 11pm
        heures += 12                                         # ajoute 12 à l'heure
        puts "#{heures}:#{minutes}"                          # et affiche cette nouvelle heure sans le PM
    elsif heures == 12 && meridien == "pm"                   # si l'heure donnée est 12pm
        puts "#{heures}:#{minutes}"                          # affiche les mêmes nombres sans le PM
    elsif heures == 12 && meridien == "am"                   # si l'heure donnée est 12am
        heures -= 12                                         # soustrait 12 à l'heure
        puts "#{heures}:#{minutes}"                          # et affiche cette nouvelle heure sans le AM
    end
else                                   
   puts "erreur: insérer un argument au format HH:MMam ou HH:MMpm"    # sinon affiche ce message d'erreur
end



# j'ai laissé la possibilité à l'utilisateur de donner un ou deux chiffres pour le premier nombre de l'argument
# car c'est compréhensible de dire 3:04 pour 3 h 04 du matin
# pour les minutes j'ai imposé de donner deux chiffres 
# car c'est moins compréhensible de dire 3:4 pour 3 h 04 du matin 
# i rend l'expression régulière insensible à la casse, am et pm peuvent être en majuscule