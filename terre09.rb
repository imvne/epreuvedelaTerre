# Racine carrée d'un nombre

argument = ARGV

nombre = ARGV[0].to_f                                           # variable nombre contenant l'argument, converti en flotant
racinecarree = 1                                                # 

intervalle_resultat = nombre - 0.001                            # je fixe l'intervalle de résultat approximatif du nombre donné,

until (intervalle_resultat..nombre).include?(racinecarree ** 2) # jusqu'à ce qu'un nombre au carré donne un résultat qui se situe dans l'intervalle 
    racinecarree ** 2                                           # mutliplie chaque nombre par lui même
    racinecarree = racinecarree + 0.0001                        # ajoute 0.0001 à ce nombre, puis multiplie le encore par lui même
end

resultat_approximatif = format("%.3f", racinecarree)            # affiche le nombre contenu dans racinecarree quand son resultat se situe dans l'intervalle, arrondi au millième 
puts resultat_approximatif                                      # affiche le résultat de la racine carrée, arrondi au millième



# j'attribue 1 à la variable racinecarree, afin de commencer à chercher la racine carrée dès le chiffre 1