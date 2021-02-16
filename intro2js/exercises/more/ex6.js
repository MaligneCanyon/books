function allMatches(arr, pattern) { // can pass a regex expr (ex. /lab/) as an arg
  return arr.filter(elem => pattern.test(elem));
}

let words = [
  'laboratory',
  'experiment',
  'flab',
  'Pans Labyrinth',
  'elaborate',
  'polar bear',
];

console.log(allMatches(words, /lab/)); // ['laboratory', 'flab', 'elaborate']
