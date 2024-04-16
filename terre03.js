// Alphabet à partir de

let arguments = process.argv;

let letter = process.argv[2];

function isThereanArg() {
  if (!letter) {
    return "erreur : insérez une lettre";
  } else if (letter.length > 1) {
    return "erreur : n'insérez qu'une lettre";
  }
}

function isItLetter() {
  if (!/^[a-zA-Z]+$/.test(letter)) {
    return "erreur : n'insérez rien d'autre qu'une lettre";
  }
}

let alphabet = "";

function aPartirDe() {
  if (isThereanArg()) {
    console.log(isThereanArg());
  } else if (isItLetter()) {
    console.log(isItLetter());
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
}

aPartirDe();
