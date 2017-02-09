const escapeRegExp = require('escape-string-regexp')

// Default best way is to pass in all options from main module
module.exports = function plugin (opts, data) {
  // You could also just use the default opts object, and return that
  const check = {}

  opts.projectName = opts.projectName || opts.project
  opts.projectLink = opts.projectLink || `https://github.com/${opts.project}/${opts.project}`

  // These are example checks, used by Protocol Labs for checking the IPFS, multiformats, IPLD, and libp2p organizations
  check.projectBadge = ('' + data).match(escapeRegExp(`[![](https://img.shields.io/badge/project-${opts.projectName}-blue.svg?style=flat-square)](${opts.projectLink})`))
  check.freenodeBadge = ('' + data).match(escapeRegExp(`[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](https://webchat.freenode.net/?channels=%23ipfs)`))
  check.labsBadge = ('' + data).match(escapeRegExp(`[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)`))
  check.travis = ('' + data).match(escapeRegExp(`[![Travis CI](https://travis-ci.org/${opts.project}/${opts.repo}.svg?branch=master)](https://travis-ci.org/${opts.project}/${opts.repo})`))
  check.cicleci = ('' + data).match(escapeRegExp(`[![Circle CI](https://circleci.com/gh/${opts.project}/${opts.repo}.svg?style=svg)](https://circleci.com/gh/${opts.project}/${opts.repo})`))
  check.labsLicense = ('' + data).match(`Protocol Labs Inc.`)
  check.coc = ('' + data).match(new RegExp(`Please be aware that all interactions related to ${opts.projectName}`, 'gi'))
  check.cocLink = ('' + data).match(escapeRegExp('[Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md)'))
  check.contributorsLink = ('' + data).match(escapeRegExp(`https://github.com/${opts.project}/${opts.project}/blob/master/contributing.md`))
  check.stdreadmeNote = ('' + data).match('Small note: If editing the README')
  check.notodo = !('' + data).match('(TODO|TBD)', 'gi')
  check.hackOnIPFS = !('' + data).match('Want to hack on IPFS', 'gi')

  return check
}
