function maxArrVal (arr) {
  let max = undefined;
  arr.forEach(elem => {
    if (!max || max < elem) max = elem;
  });

  return max;
}

console.log(maxArrVal([undefined, undefined])); //=> undefined
console.log(maxArrVal(['a', 'bbb', 'ab']));     //=> 'bbb'

console.log(Math.max(undefined, undefined));    //=> NaN
console.log(Math.max('a', 'bbb', 'ab'));        //=> NaN

console.log(maxArrVal([1, 6, 3, 2]));           //=> 6
console.log(maxArrVal([-1, -6, -3, -2  -1]));   //=> -1
console.log(maxArrVal([2, 2]));                 //=> 2
console.log(maxArrVal([]));                     //=> undefined

console.log(Math.max(1, 6, 3, 2));              //=> 6
console.log(Math.max(-1, -6, -3, -2  -1));      //=> -1
console.log(Math.max(2, 2));                    //=> 2
console.log(Math.max());                        //=> -Infinity
