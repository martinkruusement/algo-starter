/* eslint-disable no-undef */
/* eslint-disable no-unused-expressions */

const alg = require('./index.js')
const cases = require('./load-tests.js')
describe('MARTIN\'S ALGORITHM TEST SUITE', () => {
  it('ALL SYSTEMS FULLY OPERATIONAL', () => {
    expect(typeof alg).toBe('function')
  })
  it('GOOD LUCK!', () => { return new Promise((resolve) => { resolve() }) })
})

describe('TEST CASES:', () => {
  cases.length > '0' && test('0: ' + cases[0].in, () => {
    cases[0].in // ?
    expect(alg(cases[0].in)).toStrictEqual(cases[0].out)
  })
  cases.length > '1' && test('1: ' + cases[1].in, () => {
    cases[1].in // ?
    expect(alg(cases[1].in))
      .toStrictEqual(cases[1].out)
  })
  cases.length > '2' && test('2: ' + cases[2].in, () => {
    cases[2].in // ?
    expect(alg(cases[2].in))
      .toStrictEqual(cases[2].out)
  })
  cases.length > '3' && test('3: ' + cases[3].in, () => {
    cases[3].in // ?
    expect(alg(cases[3].in))
      .toStrictEqual(cases[3].out)
  })
  cases.length > '4' && test('4: ' + cases[4].in, () => {
    cases[4].in // ?
    expect(alg(cases[4].in))
      .toStrictEqual(cases[4].out)
  })
  cases.length > '5' && test('5: ' + cases[5].in, () => {
    cases[5].in // ?
    expect(alg(cases[5].in))
      .toStrictEqual(cases[5].out)
  })
  cases.length > '6' && test('6: ' + cases[6].in, () => {
    cases[6].in // ?
    expect(alg(cases[6].in))
      .toStrictEqual(cases[6].out)
  })
  cases.length > '7' && test('7: ' + cases[7].in, () => {
    cases[7].in // ?
    expect(alg(cases[7].in))
      .toStrictEqual(cases[7].out)
  })
  cases.length > '8' && test('8: ' + cases[8].in, () => {
    cases[8].in // ?
    expect(alg(cases[8].in))
      .toStrictEqual(cases[8].out)
  })
  cases.length > '9' && test('9: ' + cases[9].in, () => {
    cases[9].in // ?
    expect(alg(cases[9].in))
      .toStrictEqual(cases[9].out)
  })
})
