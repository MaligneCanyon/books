// Method #1
// - if the list of keys is not empty
//   - let the newObj be {}
//   - for each key in the list of keys
//     - if the key is found in obj.keys
//     - copy the k:v pair to the newObj
// - else
//   - clone the oldObj
function copyObj (obj, keys) { // if there is no keys arg passed in ...
  if (keys) { // ... then keys evals to F
    let newObj = {};
    let objKeys = Object.keys(obj);

    keys.forEach(key => {
      if (objKeys.includes(key)) {
        newObj[key] = obj[key]; // assign the value directly
      } else {
        console.log(`key '${key}' not found`);
      }
    });

    return newObj;
  } else {
    // return Object.create(obj); // doesn't create native keys
    return Object.assign({}, obj); // creates a shallow copy
  }
}


// Method #2
let xcopyObj = (objSource, objKeys = Object.keys(objSource)) => {
  let objDest = {};
  objKeys.forEach(key => objDest[key] = objSource[key]);
  return objDest;
}


let objToCopy = {
  foo: 1,
  bar: 2,
};

let newObj = copyObj(objToCopy);
console.log(newObj.foo);    // => 1
console.log(newObj.bar);    // => 2
console.log(newObj);        // => { foo: 1, bar: 2 }

let newObj2 = copyObj(objToCopy, ['foo']);
console.log(newObj2.foo);   // => 1
console.log(newObj2.bar);   // => undefined
console.log(newObj2);       // => { foo: 1 }

copyObj(objToCopy, ['xx']); // => key 'xx' not found

let xnewObj3 = xcopyObj(objToCopy, ['foo', 'poo']);
console.log(xnewObj3.foo);  // => 1
console.log(xnewObj3.poo);  // => undefined
console.log(xnewObj3);      // => { foo: 1, poo: undefined }
