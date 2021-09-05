const fs = require('fs');

var myArgs = process.argv.slice(2);

fs.readFile(myArgs[0], (err, data) => {
    if (err) throw err;
    process.stdout.write(data);
})