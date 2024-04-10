# Trié ou pas ?

arguments = ARGV
liste = ARGV.map(&:to_i)

mal_trie = false

if arguments.length < 2                                                  # si moins de deux arguments donnés
    puts "erreur: insérer au moins deux arguments"                       # affiche ce message d'erreur
elsif arguments =~ /\D/                                                  # si un des arguments contient autre chose que des nombres
    puts "erreur: ne donner que des nombres"                             # affiche ce message d'erreur
elsif
    liste.each_with_index do |nombre, index|                             # pour chaque nombre de la liste, variable nombre et index stock temporairement le nombre et l'index
        break if index == liste.length - 2                               # arrête de traiter les nombres si on est rendu à l'avant dernier

        if nombre > liste[index + 1]                                     # pour chaque nombre de la liste, si le nombre est plus grand que le suivant
            puts "pas trié"                                              # affiche pas trié
            mal_trie = true                                              # affecte true à la variable mal_trie
            break                                                        # empêche de continuer à vérifier si la liste est bien triée
        end
    end
end

unless mal_trie                                                          # afin d'éviter un conflit entre le message trié et mal trié, sauf si la variable mal_trie est vraie
    puts "trié"                                                          # alors affiche le message trié
end
















# je suis le premier élément de la liste darguments

# si ya pas dargument apres moi
#     afficher entrer au moins deux arguments

# sinon si ya un argument apres moi
#     si le prochain est plus petit que moi
#         afficher pas trié
#     sinon si il est plus grand que moi
            
#             tant que ya un argument apres moi
#                 si prochain plus grand que moi
#                     prendre sa place 
#                 sinon prochain plus petit que moi
#                     afficher pas trié 
#             afficher trié