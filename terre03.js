// Alphabet à partir de

let arguments = process.argv;

let letter = process.argv[2];

let alphabet = "";

if (!letter) {
  console.log("erreur : insérez une lettre");
} else if (letter.length > 1) {
  console.log("erreur : n'insérez qu'une lettre");
} else if (!/^[a-zA-Z]+$/.test(letter)) {
  console.log("erreur : n'insérez rien d'autre qu'une lettre");
} else if (/^[a-z]+$/.test(letter)) {
  let codeAscii = letter.charCodeAt(0);
  for (; codeAscii < 123; codeAscii++) {
    alphabet += String.fromCharCode(codeAscii);
  }
  console.log(alphabet);
} else if (/^[A-Z]+$/.test(letter)) {
  let codeAscii = letter.charCodeAt(0);
  for (; codeAscii < 91; codeAscii++) {
    alphabet += String.fromCharCode(codeAscii);
  }
  console.log(alphabet);
}
