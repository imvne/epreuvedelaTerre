# Inverser une chaîne

input = gets.chomp 

chaine = input.chars
index = chaine.index(chaine[-1])

if input.empty?
    print "erreur : aucun argument fourni"
else
begin
    print chaine[index]
    index = index - 1
    if chaine[index] == " "   
        print ""          
    end
end while index != -1
end

print "\n"

