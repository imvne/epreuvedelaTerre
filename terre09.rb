# Racine carrée d'un nombre

argument = ARGV

nombre = ARGV[0].to_i                                                   # variable nombre contenant l'argument, converti en integer
racinecarree = 1                                                

intervalle_resultat = nombre - 0.001                                    # je fixe l'intervalle de résultat approximatif du nombre donné

if argument.length != 1 || ARGV[0] =~ /\D/                              # si l'utilisateur n'entre rien ou + d'un argument ou autre chose que des nombres
    puts "erreur : insérer seulement un nombre"                         # affiche ce message d'erreur
else

    until (intervalle_resultat..nombre).include?(racinecarree ** 2)     # jusqu'à ce qu'un nombre au carré donne un résultat qui se situe dans l'intervalle 
        racinecarree += 0.0001                                          # ajoute 0.0001 à ce nombre
        resultat_approximatif = format("%.3f", racinecarree)            # affiche le nombre contenu dans racinecarree quand son resultat se situe dans l'intervalle, arrondi au millième 
    end

    if resultat_approximatif.to_f % 1 == 0                                              # si ce résultat approximatif est un entier
        puts "#{resultat_approximatif.sub!(/\.0+\z/, "")} : c'est un carré parfait !"   # affiche le résultat en enlevant les 0 après la virgule
    else
        puts "#{resultat_approximatif} : ceci est un résultat approximatif"             # sinon, affiche le résultat approximatif de la racine carrée  
    end

end


# j'attribue 1 à la variable racinecarree, afin de commencer à chercher la racine carrée dès le chiffre 1