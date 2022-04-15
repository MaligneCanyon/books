function isNotANumber(val) {
  return String(val) === 'NaN' || Number(val) !== val;
}

console.log(isNotANumber(4.1));
console.log(isNotANumber('abc'));
console.log(isNotANumber(undefined));
console.log(isNotANumber(true));
console.log(isNotANumber(NaN));
