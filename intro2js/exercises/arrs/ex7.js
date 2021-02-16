function sumOfSquares(arr) {
  return arr.reduce((accum, elem) => accum + elem * elem, 0);
}

let numbers = [3, 5, 7];
console.log(sumOfSquares(numbers)); // => 83

// Note that 83 is 3*3 + 5*5 + 7*7.
