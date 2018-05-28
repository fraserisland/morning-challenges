/*
Is Match
Tells you if the keys and values in properties are contained in object.
Example:

isMatch(stooge, {age: 32});
=> true
*/

// Your code here!

var stooge = {name: 'moe', age: 32};


const isMatch = (objName, keyVal) => {
  Object.keys(objName).forEach(function eachKey(key) {
    if(isNaN(key) === false){key = parseInt(key)}
      if(keyVal == `{${key}: ${stooge[key]}}`){
        console.log(true)
      } else {
        console.log(false)
        console.log(`{${key}: ${stooge[key]}}`)
      }
    });
}

//objectName and keyvalue pair

  //loop through the key/val pairs
  //if key/val pair matches keyVal return true
  //else false
//





// Check your solution by running these tests: mocha *this_filename*
// const assert = require('assert');
//
// describe('Is Match', () => {
//   it('returns a boolean', () => {
//     const moe = {name: 'Moe Howard', hair: true};
//     const curly = {name: 'Curly Howard', hair: false};
//     assert.equal(isMatch(moe, {hair: true}), true);
//     assert.equal(isMatch(curly, {hair: true}), false);
//   });
// });
