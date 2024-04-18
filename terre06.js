// Inverser une chaîne

let arguments = process.argv;

let string = process.argv[2];

if (arguments.length > 3) {
	console.log("erreur : n'insérez qu'un argument");
}
else {
	reversedString = "";
	for (let i = string.length - 1; i >= 0; i --){
		reversedString += string[i];
	}
	console.log(reversedString);
}