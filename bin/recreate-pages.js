#!/usr/bin/env node
const members = require('../_data/family.json');
const fs = require('fs');
const lodash = require('lodash');

lodash.keys(members).forEach((menu) => {
  fs.writeFileSync(
    `${__dirname}/../pages/${menu}.html`,
    `---\nlayout: default-index\nmenu: ${menu.name}\ntitle: ${menu}\n---\n{% include card.html %}`);
});
