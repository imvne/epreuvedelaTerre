# Pair ou impair ?

argument = ARGV                                      # variable contenant l'élément entré dans le terminal par l'utilisateur

nombre = ARGV[0].to_i                                # variable contenant le premier élément de l'argument transformé en integer

if argument.length != 1 || nombre =~ /^-?\d+$/ || ARGV[0] =~ /\D/       # si l'utilisateur n'entre rien ou + d'un argument, ou autre qu'un nombre
    puts "Tu ne me la mettra pas à l'envers"
else
    if nombre % 2 == 0                              # si la divison nombre / 2 à pour reste 0
        puts "pair"                                 # alors affiche que c'est un nombre pair
    else
        puts "impair"                               # sinon affiche que c'est un nombre impair
    end
end