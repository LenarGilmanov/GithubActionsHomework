// app.test.js

const concatStrings = require('../app');

test('concatenates strings', () => {
    expect(concatStrings('Hello, ', 'world!')).toBe('Hello, world!');
    expect(concatStrings('abc', 'def', 'gh1')).toBe('abcdefgh1');
});
