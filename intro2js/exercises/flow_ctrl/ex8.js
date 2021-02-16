function numberRange (num) {
  // could use parseInt here to coerce num to an int
  if (num < 0)
    console.log(`${num} is less than 0`);
  else if (num <= 50)
    console.log(`${num} is between 0 and 50`);
  else if (num <= 100)
    console.log(`${num} is between 51 and 100`);
  else
    console.log(`${num} is greater than 100`);
}

numberRange(25);   // '25 is between 0 and 50'
numberRange(75);   // '75 is between 51 and 100'
numberRange(125);  // '125 is greater than 100'
numberRange(-25);  // '-25 is less than 0'

numberRange(50.2); // '50.2 is between 51 and 100' // a bug !
