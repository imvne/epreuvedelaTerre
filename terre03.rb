#L'alphabet à partir de

lettre = gets.chomp                              # variable contenant la lettre entrée dans le terminal par l'utilisateur

print lettre                                     # affiche la lettre entrée
print lettre.succ                                # imprime la lettre suivante

begin 
    lettre = lettre.succ               # à chaque tour de la boucle on remplacera le contenu de la variable par la lettre suivante de l'alphabet
    print lettre.succ                  # à chaque tour de la boucle on affiche la lettre suivante de la dernière lettre suivante
end while lettre.succ != "z"           # on continue la boucle tant que la lettre suivante n'est pas z

print "\n"                             # revient à la ligne