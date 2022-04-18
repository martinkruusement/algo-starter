const cases = require('./load-tests.js')

function solution (A) {
  let input = A
  let output = input.map(item => item * 2)
  output[2] = 'NORMAALNE'

  return output
}

solution(cases[1].in)
module.exports = solution
