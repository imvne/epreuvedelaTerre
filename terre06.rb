# Inverser une chaîne

input = gets.chomp                                   # variable contenant les deux nombres entrés dans le terminal par l'utilisateur

chaine = input.chars                                 # la chaine de caractère est stockée en caractères individuels dans la liste chaine
index = chaine.length - 1                            # variable contenant l'index du dernier élément de la liste

if input.empty?                                      # si l'utilisateur n'entre rien affiche ce message d'erreur
    print "erreur : aucun argument fourni"
else
while   index >= 0  do                               # sinon, tant que l'index est supérieur ou égal à 0 (premier élément du tableau)
    print chaine[index]                              # affiche le dernier élément de la liste chaine
    index -= 1                                       # affiche l'élément précédant le dernier élément de la liste chaine
end 
end

print "\n"

