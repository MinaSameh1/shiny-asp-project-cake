const faker = require("faker");

console.log(
        faker.date.
        between('2000-01-01', '2020-01-05')
        .toLocaleDateString()
);