let obj = {
  b: 2,
  a: 1,
  c: 3,
};

let arr = Object.keys(obj).map(elem => elem.toUpperCase());
// let arr = Object.keys(obj).map(toUpperCase); // does not work
// let arr = Object.keys(obj).map(String.prototype.toUpperCase); // does not work
console.log(arr);
console.log(obj);
