let rlSync = require('readline-sync'); // global

function getNum (ndxStr = '\b') { // default is backspace
  return Number(rlSync.question(`Enter the ${ndxStr} number:\n`));
}

function multiply (a, b) {
  return a * b;
}

let firstNum = getNum("first");
let secondNum = getNum("second");
console.log(`${firstNum} * ${secondNum} = ${multiply(firstNum, secondNum)}`);

firstNum = getNum();
console.log(`${firstNum} * ${firstNum} = ${multiply(firstNum, firstNum)}`);
