# Puissance d'un nombre

arguments = ARGV

nombre = ARGV[0].to_i        # variable nombre contenant le premier élément des arguments donnés, converti en integer
exposant = ARGV[1].to_i      # variable exposant contenant le deuxième élément des arguments donnés, converti en integer

résultat = 1 


if arguments.length != 2                            # si l'utilisateur n'entre rien, ou + ou - de deux argument 
    puts "erreur : insérer seulement 2 arguments"   # affiche ce message d'erreur
elsif ARGV[0] =~ /\D/ || ARGV[1] =~ /\D/            # si l'utilisateur entre autre chose que des nombres
    puts "erreur : insérer seulement des nombres"   # affiche ce message d'erreur
else
    exposant.times do                               # sinon fait ça "exposant" fois
    résultat *= nombre                              # multiplie le nombre par lui même
    end                                
    puts résultat                                   # affiche le résultat
end


# j'attribue 1 à la variable résultat, afin que la première mutliplication soit égale au nombre donné
# pour ensuite mutliplier ce nombre à lui même "exposant" fois
