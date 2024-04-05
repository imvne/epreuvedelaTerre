# L'alphabet à partir de


lettre = gets.chomp                              # variable contenant la lettre entrée dans le terminal par l'utilisateur
prochaine_lettre = lettre.succ                   # permet de générer la prochaine lettre de l'alphabet et l'implémenter dans une nouvelle variable

print lettre                                     # affiche la lettre que l'utilisateur à entré
print prochaine_lettre                           # affiche la lettre suivante 
print prochaine_lettre.succ

begin 
    prochaine_lettre = prochaine_lettre.succ     # à chaque tour de la boucle on remplacera le contenu de la variable prochaine_lettre, par la lettre suivante de l'alphabet
    print prochaine_lettre.succ                  # à chaque tour de la boucle on affiche la lettre suivante
end while prochaine_lettre.succ != "z"           # on continue la boucle tant que la lettre suivante n'est pas z

print "\n"                                       # revient à la ligne

