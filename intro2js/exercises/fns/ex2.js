let rlSync = require('readline-sync'); // global

function getName (namePart = 'full') {
  return rlSync.question(`What is your ${namePart} name ?\n`);
}

let firstName = getName("first");
let lastName = getName("last");
console.log(`Hello, ${firstName} ${lastName} !`);

let fullName = getName();
console.log(`Goodbye, ${fullName} !`);
