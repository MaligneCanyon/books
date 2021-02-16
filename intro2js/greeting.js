// greeting.js

let greetingMessage = 'Good Morning';

function greetPeople() {
  console.log(greetingMessage);
}

function changeGreetingMessage(newMessage) {
  greetingMessage = newMessage;
}

greetPeople(); // logs 'Good Morning'
changeGreetingMessage('Good Evening');
greetPeople(); // logs 'Good Evening'
