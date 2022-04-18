const cases = require('./load-tests.js')

function solution (A) {
  let input = A
  let output = input.map(n => n * 2)

  return output
}

solution(cases[0].in)
module.exports = solution
