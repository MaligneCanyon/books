function oddLengths(arr) {
  return arr.map(elem => elem.length).filter(elem => elem % 2);
}

let arr = ['a', 'abcd', 'abcde', 'abc', 'ab'];
console.log(oddLengths(arr)); // => [1, 5, 3]
