# Nombre entier

argument = ARGV

nombre = ARGV[0].to_i

liste_chiffres = nombre.to_s.chars.map(&:to_i)                             # variable contenant le nombre donné, sous forme de liste ou chaque chiffre de ce nombre est traité comme un nombre seul 

racine = Math.sqrt(nombre)                                                 # variable qui contient la racine carrée de nombre
racinearrondie = racine.round                                              # variable qui contient la racine carrée arrondie de nombre

if argument.length != 1 || ARGV[0] =~ /\D/                                 # si l'utilisateur n'entre rien ou + d'un argument ou autre chose que des nombres
    puts "erreur : insérer seulement un nombre"                            # affiche ce message d'erreur
elsif nombre == 2                                                          # 2 est le seul chiffre pair premier c'est une exception aux critères de divisibilité
    puts "Oui, #{nombre} est un nombre premier."
   
elsif nombre.even? || nombre == 0 || nombre == 1 || nombre % 10 == 0 ||    # si le nombre donné est pair, si il est égal à 0 ou à 1, si il est divisible par 10
      liste_chiffres.sum % 9 == 0                                          # si la somme des chiffres qui le compose est divisible par 9
    puts "Non, #{nombre} n'est pas un nombre premier."                     # affiche que ce n'est pas un nombre premier
else                                
    premier = true                                                         # ici j'estime que c'est un nombre premier jusqu'à ce qu'on trouve un diviseur
    (2..racinearrondie).each do |diviseur|                                 # chaque entier compris entre 2 et la racine carrée du nombre est stocké temporairement dans diviseur
        if nombre % diviseur == 0                                          # si la division du nombre et du diviseur, à pour reste 0, cela veut dire que le nombre à un autre diviseur que 1 et lui même
            premier = false                                                # si on trouve ce diviseur alors premier n'est plus vrai
            break
        end
    end

    if premier                                                             # si la variable premier est vraie
        puts "Oui, #{nombre} est un nombre premier."                       # affiche que le nombre est premier
    else                                                                   # si la variable premier est fausse
        puts "Non, #{nombre} n'est pas un nombre premier."                 # affiche que le nombre n'est pas premier
    end
end

# Un nombre est premier si il possède exactement deux diviseurs qui sont 1 et lui même
# Pour vérifier si un nombre est premier on procède par élimination, si il rempli un des critères de divisibilité (ligne 14), il n'est pas premier, ensuite
# Pour vérifier si un nombre n est premier on cherche un diviseur éventuel de n parmi les entiers compris entre 2 et √n
