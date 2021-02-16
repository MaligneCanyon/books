// let age = 21.4; // account for infants 0 < age < 1 yr
// if (age > 0) {
//   age = parseInt(age, 10);
//   let delta = 0;
//   for (let ndx = 0; ndx < 4; ndx++) {
//     delta += 10;
//     console.log(`in ${delta} years you will be ${age + delta} years old.`);
//   }
// } else {
//   console.log('invalid age');
// }


// refactored
let age = 21.4; // account for infants 0 < age < 1 yr
if (age > 0) {
  age = parseInt(age, 10);
  for (let delta = 10; delta < 50; delta += 10) {
    console.log(`in ${delta} years you will be ${age + delta} years old.`);
  }
} else console.log('invalid age');


// R. vers
// puts "how old are you ? (please enter your age)"
// age = gets.to_f # account for infants 0 < age < 1 yr
// if age > 0
//   age = age.to_i
//   i = 0
//   4.times do
//     i += 10
//     puts "in #{i} years you will be #{i + age}"
//   end
// else
//   puts "invalid age"
// end
