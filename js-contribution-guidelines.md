# JS Contribution Guidelines

Many IPFS projects use JavaScript. Please check these guidelines before contributing JavaScript code to an IPFS repository.

## Contributing

- Follow conventions in that repo.
- Lint your code. Check whether `standard` or `eslint` is being used.
- Run any relevant precommit scripts or tests that are in the package.json.

## Suggestions For Maintainers

- Build system: Use `npm run` for small projects; for larger ones, use `gulp`.
- Testing node: `mocha`
- Testing browser: `karma` + `mocha`
- Browser building: `webpack` or `browserify`
- Linting: Use [standard](//github.com/feross/standard). If you have to configure styles at the repo level because you or we are using Babel and ES6, use `eslint`, `eslint-config-standard`, and `babel-eslint` as needed. (If you're not sure, use standard).
- Use [greenkeeper](http://greenkeeper.io/) to keep your deps up to date.
