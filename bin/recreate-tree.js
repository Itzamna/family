#!/usr/bin/env node
const members = require('../_data/family.json');
const fs = require('fs');
const lodash = require('lodash');

lodash.keys(members).forEach((menu) => {
  fs.writeFileSync(
    `${__dirname}/../trees/pv-${menu}.json`,
    `---\npid: ${menu}\n---\n{% assign date = site.data.family%}{% assign piddata = site.data.family[page.pid] %}{% assign pidgender = piddata.gender %}[{{% capture fid %}{{ page.pid }}{% endcapture %}{% include people-json.html id=fid %},"textClass": "emphasis"{% if pidgender and pidgender != "#N/A" and pidgender != "FALSE" and pidgender != "0"  %},{% include plv-all.json fid=fid %}{% endif %}}]`);
});
