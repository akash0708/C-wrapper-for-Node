const addon = require('./build/Release/addon');

// Call the `add` function
// console.log(addon.add(5, 3)); // Should print: 8

// Call the `hello` function
addon.hello(); // Should print: Hello from shared library!
