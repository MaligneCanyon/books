let myArray = [1, 3, 6, 11, 4, 2, 4, 9, 17, 16, 0];

// log all even elems
// myArray.forEach(function (elem) {
//   if (elem % 2 === 0) console.log(elem);
// });


// log all unique even values
// let newArray = [];
// myArray.forEach(elem => {
//   if (elem % 2 === 0 && !newArray.includes(elem)) {
//     newArray.push(elem);
//     console.log(elem);
//   }
// });


function uniqueElems(arr) {
  let newArr = [];
  arr.forEach(elem => { if (!newArr.includes(elem)) newArr.push(elem); });
  return newArr;
}

function logEven(elem) {
  if (isEven(elem)) console.log(elem);
}

function isEven(num) {
  return num % 2 === 0;
}

uniqueElems(myArray).forEach(logEven);
