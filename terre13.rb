# Trouver la suisse (lol)

arguments = ARGV

premier = ARGV[0]
deuxieme = ARGV[1]
troisieme = ARGV[2]

if arguments.length != 3                                                 # si plus ou moins de trois arguments donnés
    puts "erreur: donner trois arguments"                                # affiche ce message d'erreur
elsif premier =~ /\D/ || deuxieme =~ /\D/ || troisieme =~ /\D/           # si un des arguments contient autre chose que des nombres
    puts "erreur: ne donner que des nombres"                             # affiche ce message d'erreur

elsif premier < deuxieme && deuxieme < troisieme #123                    # si le premier argument est plus petit que le deuxieme,  
    puts deuxieme                                                        # et le deuxieme plus petit que le troisème, affiche le deuxième

elsif premier > deuxieme && deuxieme > troisieme #321
    puts deuxieme

elsif premier > deuxieme && deuxieme < troisieme && troisieme > premier #231
    puts premier
    
elsif premier > deuxieme && deuxieme < troisieme && troisieme > premier #213
    puts premier

elsif premier > deuxieme && deuxieme < troisieme && troisieme < premier #312
    puts troisieme

elsif premier < deuxieme && deuxieme > troisieme && troisieme > premier #132
    puts troisieme
    
else
    puts "erreur"
end