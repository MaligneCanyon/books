let myProtoObj = {
  foo: 1,
  bar: 2,
};

let myObj = Object.create(myProtoObj);
console.log(myObj); // {} // only logs native properties

myObj.qux = 3;

Object.keys(myObj).forEach(function(key) {
  console.log(key); // qux // only logs the native key
});

for (let key in myObj) {
  console.log(key); // qux, foo, bar // logs all keys
}
