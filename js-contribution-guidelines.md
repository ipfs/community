# JS Contribution Guidelines

Many IPFS projects use JavaScript. Please check these guidelines before contributing JavaScript code to an IPFS repository.

## Contributing

- Follow conventions in that repo.
- Lint your code. Check whether [standard](//github.com/feross/standard) or [eslint](https://github.com/eslint/eslint) is being used.
- Run any relevant precommit scripts or tests that are in the package.json.

## Suggestions For Maintainers

- Build system: Use `npm run` for small projects; for larger ones, use [gulp](http://gulpjs.com/).
- Testing node: [mocha](https://mochajs.org/)
- Testing browser: [karma](https://karma-runner.github.io/0.13/index.html) and [mocha](https://mochajs.org/)
- Browser building: [webpack](https://webpack.github.io/) or [browserify](http://browserify.org/).
- Linting: Use [standard](//github.com/feross/standard). If you have to configure styles at the repo level because you or we are using Babel and ES6, use [eslint](https://github.com/eslint/eslint), [eslint-config-standard](https://github.com/feross/eslint-config-standard), and [babel-eslint](https://github.com/babel/babel-eslint) as needed. (If you're not sure, use standard).
- Use [greenkeeper](http://greenkeeper.io/) to keep your deps up to date.
- Use [precommit](https://www.npmjs.com/package/pre-commit) and [ghooks](https://www.npmjs.com/package/ghooks) to run tests while developing.
