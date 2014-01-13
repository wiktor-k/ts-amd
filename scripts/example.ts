import pure = require('./lib/pure');

export function getText() {
    return 'the answer is: ' + pure.answer();
}
