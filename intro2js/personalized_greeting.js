// personalized_greeting.js

// Use Node's built-in 'require' function to import readline-sync into the program.
// Returns the library as an object, which we assign to rlSync.
let rlSync = require('readline-sync');


// Use rlSync to call the question method.
// This method displays its string argument, then waits for the user to respond.
// When the user types some text and presses Return, it returns that text to the program.
let name = rlSync.question("What's your name?\n");

console.log(`Good Morning, ${name}!`);
