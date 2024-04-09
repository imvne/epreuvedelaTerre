# 24 to 12

argument = ARGV[0]                         # le format HH:MM est considéré comme une chaine de caractères, qui constitue un seul élément dans un tableau


if argument =~ /^(\d{1,2}):(\d{2})$/       # si l'argument donné est deux nombres composés de 1 à 2 chiffres, séparés par deux points
    heures = $1.to_i                       # attribue le premier nombre composé de 1 à 2 chiffres à la variable heures
    minutes = $2.to_i                      # attribue le deuxième nombre composé de 2 chiffres à la variable minutes
    if heures >= 1 && heures <= 11         # si l'heure donnée se situe entre 1h du matin et 11h du matin
        puts "#{heures}:#{minutes}AM"      # affiche les mêmes nombres + AM
    elsif heures >= 13 && heures <= 23     # si l'heure donnée se situe entre 13h de l'après midi et 23h du soir
        heures -= 12                       # soustrait 12 à l'heure
        puts "#{heures}:#{minutes}PM"      # et affiche cette nouvelle heure et ajoute PM
    elsif heures == 12                     # si l'heure donnée est 12h
        puts "#{heures}:#{minutes}PM"      # affiche les mêmes nombres + PM
    elsif heures == 00                     # si l'heure donnée est minuit
        heures += 12                       # ajoute 12 à l'heure
        puts "#{heures}:#{minutes}AM"      # et affiche cette nouvelle heure et ajoute AM
    end
else                                   
   puts "erreur: insérer un argument au format HH:MM"    # sinon affiche ce message d'erreur
end



# j'ai laissé la possibilité à l'utilisateur de donner un ou deux chiffres pour le premier nombre de l'argument
# car c'est compréhensible de dire 3:04 pour 3 h 04 du matin
# pour les minutes j'ai imposé de donner deux chiffres 
# car c'est moins compréhensible de dire 3:4 pour 3 h 04 du matin 