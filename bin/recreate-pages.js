#!/usr/bin/env node
const subjects = require('../_data/teachers.json');
const fs = require('fs');
const lodash = require('lodash');

lodash.keys(subjects).forEach((menu) => {
  fs.writeFileSync(
    `${__dirname}/../pages/${menu}.html`,
    `---\nlayout: default-index\nmenu: ${menu}\ntitle: ${menu}\n---\n{% include card.html %}`);
});
