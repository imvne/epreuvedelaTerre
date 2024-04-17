// Racine carrée d'un nombre

let arguments = process.argv;

let number = process.argv[2];

if (!number) {
  console.log("erreur : insérez un nombre");
} else if (arguments.length > 3) {
  console.log("erreur : n'insérez qu'un nombre");
} else if (!/^\d+$/.test(number)) {
  console.log("erreur : n'insérez rien d'autre qu'un nombre");
} 

else {
  let perfectSquare = false;
  let i = 1;
  for (; i ** 2 <= number; i++) {
    if (i ** 2 == number) {
      console.log("La racine carrée de " + number + " est " + i + " c'est un carré parfait !");
      perfectSquare = true;
      break;
    }
  }
  
  if (!perfectSquare) {
    let j = i - 1;
    for (; j ** 2 <= number; j += 0.001) {
      if (j ** 2 > number - 0.001 && j ** 2 <= number) {
        jRound = j.toFixed(3);
        console.log("La racine carrée de " + number + " est approximativement " + jRound);
        break;
      }
    }
  }
}

