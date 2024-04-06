# L'alphabet à partir de

input = gets.chomp                               # variable contenant la lettre entrée dans le terminal par l'utilisateur

lettre = input.downcase                          # met la lettre en minuscule si elle a été entrée en majuscule

print lettre                                     # affiche la lettre entrée

unless lettre == "z"                             # à moins que la lettre entrée soit z (pas de suite)
begin 
    lettre = lettre.succ                         # à chaque tour de la boucle on remplacera le contenu de la variable lettre par la lettre suivante de l'alphabet
    print lettre                                 # à chaque tour de la boucle on affiche la lettre suivante

end while lettre != "z"                          # on continue la boucle tant que la dernière lettre affichée n'est pas z    
end

print "\n"                                       # revient à la ligne
