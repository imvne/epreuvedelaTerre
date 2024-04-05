#Afficheur d'arguments

phrase = gets.chomp                  # variable contenant la phrase entrée dans le terminal par l'utilisateur

phrase.each_char do |caracteres|     # chaque caractère de cette phrase est stocké temporairement dans caracteres
    if caracteres == " "             # pour chaque caractère si c'est un espace affiche un retour à la ligne
        print "\n"
    else                             # sinon (si le caractère n'est pas un espace et donc est une lettre ou symbole)
        print caracteres + ""        # imprime le caractère à la suite
    end
end

print "\n"                           # pour éviter le %