function isUrl(str) {
  return str.match(/^https?:\/\/\S+$/);
  // return !!str.match(/^https?:\/\/\S+$/); // '!!' n/r; match rtns a truthy value
}

console.log(isUrl('http://launchschool.com'));   // -> true
console.log(isUrl('https://example.com'));       // -> true
console.log(isUrl('https://example.com hello')); // -> false
console.log(isUrl('   https://example.com'));    // -> false
