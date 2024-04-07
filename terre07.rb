# Taille d'une chaine


arguments = ARGV
compteur = 0

if arguments.length != 1                               # si l'utilisateur n'entre rien ou + d'un argument 
    puts "erreur : n'insérer qu'un argument"           # affiche ce message d'erreur
else
    if arguments[0] =~ /\A\d+\z/                       # si il n'y a que des chiffres dans l'argument
    puts "erreur : insérer une chaîne de caractères"   # affiche ce message d'erreur
    else
    arguments[0].each_char do |caractere|              # sinon pour chaque caractère du premier(et seul) élément de notre argument
        compteur += 1                                  # ajoute 1 au compteur
    end 
    puts compteur                                      # affiche le compteur
end
end



