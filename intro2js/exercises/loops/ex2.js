// retrieve a +ve int from user input
function getPositiveInt() {
  let rlSync = require('readline-sync');
  let num = 0;

  while (true) {
    num = Number(rlSync.question("Enter a positive integer\n"));
    if (Number.isInteger(num) && (num > 0)) {
      return num;
    }
  }
}

// calc the factorial of a +ve int
function factorial(num) {
  for (result = 1; num > 1; num--)
    result *= num;
  return result;
}

let n = getPositiveInt();
console.log(`${n}! equals ${factorial(n)}`);
console.log(factorial(0));     // => 1
console.log(factorial(1));     // => 1
console.log(factorial(2));     // => 2
console.log(factorial(3));     // => 6
console.log(factorial(4));     // => 24
console.log(factorial(5));     // => 120
console.log(factorial(6));     // => 720
console.log(factorial(7));     // => 5040
console.log(factorial(8));     // => 40320
