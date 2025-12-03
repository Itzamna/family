#!/usr/bin/env node
const members = require('../_data/family.json');
const fs = require('fs');
const lodash = require('lodash');

lodash.keys(members).forEach((menu) => {
  fs.writeFileSync(
    `${__dirname}/../trees/pv-${menu}.json`,
    `---\npid: ${menu}\nlmt: 8\n---\n{% include output-after.json %}`);
});
