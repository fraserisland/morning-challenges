// Pluck
// A convenient version of what is perhaps the most common use-case for map:
// extracting a list of property values.

// Example:
let stoogesArr = [{name: 'moe', age: 40}, {name: 'larry', age: 50}];
// pluck(stooges, 'name');
// => ['moe', 'larry']
// */

function stooges(key, myArray){
    results = []
    myArray.forEach((obj) => {results.push(obj[key])})
    console.log(results)
}

stooges('name', stoogesArr)





// Check your solution by running the tests: mocha *this_filename*
// const assert = require('assert');
//
// describe('Pluck', () => {
//   const people = [{name: 'moe', age: 30}, {name: 'curly', age: 50}];
//   it('pulls names out of objects', () => {
//     assert.deepEqual(pluck(people, 'name'), ['moe', 'curly'], '');
//   })
//   it('missing properties are returned as undefined', () => {
//     assert.deepEqual(pluck(people, 'address'), [void 0, void 0]);
//   })
//   it('handles edgecases', () => {
//     assert.deepEqual(pluck([{'[object Object]': 1}], {}), [1]);
//   })
// });
