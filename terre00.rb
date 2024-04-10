#Alphabet

lettre = "a"

print lettre                    
    until lettre == "z"                              # jusqu'à ce que la lettre suivante affichée soit z
        lettre = lettre.succ                         # à chaque tour de la boucle on remplacera le contenu de la variable lettre par la lettre suivante de l'alphabet
        print lettre                                 # à chaque tour de la boucle on affiche la lettre suivante
    end  
print "\n"
