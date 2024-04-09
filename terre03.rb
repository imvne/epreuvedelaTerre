# L'alphabet à partir de

argument = ARGV                                      # variable contenant la lettre entrée dans le terminal par l'utilisateur

lettre = ARGV[0].downcase                            # met la lettre en minuscule


if argument.length != 1 || ARGV[0].length != 1 || lettre =~ /[^a-z]/      # si l'utilisateur n'entre rien ou + d'un argument, ou un argument avec plus d'une lettre, ou autre qu'une lettre
    puts "erreur : n'insérer qu'une lettre"                               # affiche ce message d'erreur
else
    print lettre                    
    until lettre == "z"                              # jusqu'à ce que la lettre suivante affichée soit z
        lettre = lettre.succ                         # à chaque tour de la boucle on remplacera le contenu de la variable lettre par la lettre suivante de l'alphabet
        print lettre                                 # à chaque tour de la boucle on affiche la lettre suivante
    end  
end

puts "\n"