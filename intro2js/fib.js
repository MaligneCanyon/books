// inputs:
// - int (ndx of the num in the fib sequence)
// outputs:
// - int (the nth fib num)
// reqs:
// - calc the nth term in the fib sequence using recursion
// rules:
// - fib(n) = fib(n-1) + fib(n-2)
// struct:
// - numeric
// algo:
// - if n < 1 return 0
// - if n < 3 return 1
// - return fib(n-1) + fib(n-2)

function fibonacci(n) {
  if (n < 1) return 0;
  if (n < 3) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

console.log(fibonacci(-1) === 0);
console.log(fibonacci(0) === 0);
console.log(fibonacci(1) === 1);
console.log(fibonacci(2) === 1);
console.log(fibonacci(3) === 2);
console.log(fibonacci(4) === 3);
console.log(fibonacci(5) === 5);
console.log(fibonacci(12) === 144);
console.log(fibonacci(20) === 6765);
