// personalized_greeting_browser.js

let name = prompt("What's your name ?");
console.log(`Good Morning, ${name}`);

// code from 'Functions > 3 Ways to Define a Function'

let add = (a, b) => a + b;
let getNumber = text => {
  let input = prompt(text); // input has a String value
  return Number(input);
};

let number1 = getNumber('Enter a number: ');
let number2 = getNumber('Enter another number: ');
console.log(add(number1, number2));
