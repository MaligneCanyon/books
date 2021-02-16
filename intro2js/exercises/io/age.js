// age.js

let rlSync = require('readline-sync');
let age = rlSync.question("What is your age ?\n");

if (age > 0) { // account for infants 0 < age < 1 yr
  age = parseInt(age, 10);
  for (let delta = 10; delta < 50; delta += 10) {
    console.log(`in ${delta} years you will be ${age + delta} years old.`);
  }
} else console.log('invalid age');
