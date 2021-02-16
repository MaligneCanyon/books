// using arithmetic ops
let num = 4567;
let rem;
while (num > 0) {
  rem = num % 10;
  console.log(rem);
  num -= rem;
  num /= 10;
}

// using String
num = 4936;
let str = String(num);
let digits = str.length;
for (let ndx = 0; ndx < digits; ndx++) {
  console.log(str[ndx]);
}

// in R.
// num = 4936
// str = String(num)
// digits = str.length
// digits.times do |ndx|
//   puts str[ndx]
// end
