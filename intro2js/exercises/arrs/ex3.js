let myArray = [
  [1, 3, 6, 11],
  [4, 2, 4],
  [9, 17, 16, 0],
];

// log all even elems
// myArray.forEach(function (subArray) {
//   subArray.forEach(function (elem) {
//     if (elem % 2 === 0) console.log(elem);
//   });
// })

// log all unique even values
let newArray = [];
myArray.forEach(function (subArray) {
  subArray.forEach(function (elem) {
    if (elem % 2 === 0 && !newArray.includes(elem)) {
      newArray.push(elem);
      console.log(elem);
    }
  });
})
