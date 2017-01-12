// This script basically copies any labels from githubLabels.json
// to every repo specified below. It is simple, but it works.
//
// ## Install
// `npm i -g github-labels`
// Then, generate an access token in GitHUb, and provide this:
// `labels -c githubLabels.json ipfs/community -t <token>` 

const exec = require('child_process').exec
const githubRepos = require('github-repositories')
const orgs = [
  // 'ipfs',
  'ipld',
  //'libp2p',
  //'multiformats'
]

orgs.forEach((org) => {
  githubRepos(org).then(data => {
    data.map((item) => {
      exec('labels -c githubLabels.json ' + item.full_name,
        (error, stdout, stderr) => {
          console.log(`stdout: ${stdout}`)
          console.log(`stderr: ${stderr}`)
          if (error !== null) {
            console.log(`exec error: ${error}`)
          }
        }
      )
    })
  })
})
