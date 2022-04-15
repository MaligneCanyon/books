// greeter.js

// let rlSync = require('readline-sync');
// let firstName = rlSync.question("What is your first name ?\n");
// let  lastName = rlSync.question("What is your last name ?\n");
// console.log(`Hello, ${firstName} ${lastName} !`);


function askName(portion) {
  let rlSync = require('readline-sync');
  return rlSync.question(`What is your ${portion} name ?\n`);
}
console.log(`Hello, ${askName('first')} ${askName('last')} !`);
