function times(number1, number2) {
  let result = number1 * number2;
  console.log(result);
  return result;
}

for (let num1 = 1, num2 = 1; num2 < 6; num2++) {
  num1 = times(num1, num2);
}
