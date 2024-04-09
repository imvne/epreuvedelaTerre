#Afficheur d'arguments

arguments = ARGV                    # variable contenant la phrase entrée dans le terminal par l'utilisateur, arguments séparés par les espaces

arguments.each do |caracteres|     # chaque élément du tableau arguments est stocké temporairement dans caracteres
    print caracteres + "\n"        # affiche chaque argument + un retour à la ligne
end