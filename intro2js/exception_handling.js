// exception_handling.js

let names = ['bob', 'joe', 'steve', undefined, 'frank'];

names.forEach(name => {
  try {
    console.log(`${name}'s name has ${name.length} letters in it.`);
  } catch (err) {
    console.log('Something went wrong:');
    console.log(`There was a ${err.name} with message "${err.message}".`);
  }
});

// Log output
// bob's name has 3 letters in it.
// joe's name has 3 letters in it.
// steve's name has 5 letters in it.
// Something went wrong:
// There was a TypeError with message "Cannot read property 'length' of undefined".
// frank's name has 5 letters in it.
