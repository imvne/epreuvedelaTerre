# Inverser une chaîne

argument = ARGV                


if argument.length != 1                                  # si l'utilisateur n'entre rien ou plus d'un argument
    print "erreur : insérer un argument"                 # affiche ce message d'erreur
else

    chaine = ARGV[0].chars                               # l'argument est stockée en caractères individuels dans la liste chaine
    index = chaine.length - 1                            # variable contenant l'index du dernier élément de la liste
    
    while   index >= 0  do                               # sinon, tant que l'index est supérieur ou égal à 0 (premier élément du tableau)
        print chaine[index]                              # affiche le dernier élément de la liste chaine
        index -= 1                                       # affiche l'élément précédant le dernier élément de la liste chaine
    end 
end

print "\n"
