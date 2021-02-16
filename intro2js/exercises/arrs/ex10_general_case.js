// algo:
// - for each elem
//   - if the elem is an arr
//     - call the fn (recursively)
//   - else
//     - if the elem is the str
//       - return the ndx of the elem
//       - break

// find and rtn the ndx of a str w/i an arr
function findElem(arr, str) {
  let found = "";
  let elem;

  for (let ndx = 0; ndx < arr.length; ndx++) {
    elem = arr[ndx];
    // if (elem.length > 0 && typeof(elem) != 'string') { // found subarr
    if (Array.isArray(elem)) { // found subarr
      found = findElem(elem, str); // call recursively
      if (found) // found target in subarr; prepend the current ndx
        found = `[${ndx}]` + found;
    } else if (elem === str) { // found target in current arr
      found += `[${ndx}]`;
    }

    if (found)
      break;
  }

  return found;
}

let arr = [1, ["test", "hello", "world"], ["example", 6, "mem", null], [4, 8, 12]];
console.log(findElem(arr, "mem"));

arr = [
  1,
  ["test", "hello", "world"],
  ["example", ["another", "level", "of", "mem"], 6, null],
  [4, 8, 12]
];
console.log(findElem(arr, "mem"));
