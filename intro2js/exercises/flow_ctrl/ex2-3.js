// function evenOrOdd (num) {
let evenOrOdd = (num) => {
  // if (parseInt(num, 10) === num)
  if (Number.isInteger(num))
    console.log((num % 2) ? 'odd' : 'even');
  else // could use a guard clause instead
    console.log('error');
}

evenOrOdd(-2);
evenOrOdd(-1);
evenOrOdd(0);
evenOrOdd(1);
evenOrOdd(2);
evenOrOdd('2'); //=> 'error'
evenOrOdd(2.1); //=> 'error'
