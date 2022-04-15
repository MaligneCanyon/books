// algo:
// - for each elem
//   - if the elem is an arr
//     - call the fn (recursively)
//   - else
//     - if the elem is the target
//       - return the ndx of the elem
//       - break

// find and rtn the ndx of a target elem w/i an arr
function findElem(arr, target) {
  let found = "";
  let elem;

  for (let ndx = 0; ndx < arr.length; ndx++) {
    elem = arr[ndx];
    if (Array.isArray(elem)) { // found subarr
      found = findElem(elem, target); // call recursively
      if (found) // found target in subarr; prepend the current ndx
        found = `[${ndx}]` + found;
    } else if (elem === target) { // found target in current arr
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
