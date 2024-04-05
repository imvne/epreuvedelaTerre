alphabet = ["a","z","e","r","t","y","u","i","o","p","q","s","d","f","g","h","j","k","l","m","w","x","c","v","b","n"]

alphabet.sort!

index_lettre = alphabet.index(alphabet[0]) #je met dans une variable l'index du premier élément
 

 print alphabet[index_lettre]

begin
    index_lettre = index_lettre + 1 #je met dans la variable, la variable + 1
    print alphabet[index_lettre]
end while index_lettre != 25

print "\n"



