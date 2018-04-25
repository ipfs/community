Guidelines for the InterPlanetary JavaScript Projects
=====================================================

These guidelines reflect our shared consensus on protocol and etiquette from what we've built so far. Every single item that is presented here is the result of lots of experimentation. However, that doesn't mean that there isn't a better way to do things. What we have below is simply what we've found to work best for us. In this document you will find notes about:

- Project structure.
- Code style.
- Continuous integration.
- Tests.
- Tasks (asset pipeline, transpiling, releasing, etc).
- Dependency management.

Our toolkit for each of these is not set in stone, and we don't plan to halt our constant search for better tools. Get in touch if you've got ideas. [These are guidelines and rather then rules](assets/CodeIsMoreLikeGuidelines.jpg).

## Table of Contents

- [Goals](#goals)
- [Module Lead Maintainers](#module-lead-maintainers)
- [Contributing](#contributing)
  - [Guidelines](#guidelines)
    - [Linting & Code Style](#linting--code-style)
    - [Testing](#testing)
    - [Releasing](#releasing)
    - [Documentation](#documentation)
  - [Commits](#commits)
    - [Commit Message Format](#commit-message-format)
    - [Revert](#revert)
    - [Type](#type)
    - [Scope](#scope)
    - [Subject](#subject)
    - [Body](#body)
    - [Footer](#footer)
    - [Examples](#examples)
    - [References](#references)
  - [Pull Requests](#pull-requests)
- [Aegir](#aegir)
  - [...for maintainers](#for-maintainers)
    - [Setting up `aegir`](#setting-up-aegir)
    - [Directory Structure](#directory-structure)
    - [Default `require`](#default-require)
    - [Continuous integration](#continuous-integration)
    - [`.gitignore`](#gitignore)
    - [`.npmignore`](#npmignore)
    - [Dependency management](#dependency-management)
    - [Pre-Commit](#pre-commit)
    - [Building](#building)
  - [...for consumers](#for-consumers)
- [FAQ](#faq)
  - [Why are you not using XYZ?](#why-are-you-not-using-xyz)
  - [Why not use simple npm scripts instead of gulp?](#why-not-use-simple-npm-scripts-instead-of-gulp)
  - [Where are all the semicolons?](#where-are-all-the-semicolons)
  - [Why are you bothering with ES2015 and all this build setup?](#why-are-you-bothering-with-es2015-and-all-this-build-setup)
  - [Do I have to use ES2015 and Babel and aegir in my project?](#do-i-have-to-use-es2015-and-babel-and-aegir-in-my-project)
  - [Do I have to bundle everything with webpack?](#do-i-have-to-bundle-everything-with-webpack)
  - [Why are you doing this?](#why-are-you-doing-this)
- [Code of Conduct](#code-of-conduct)
- [References - Resources and good reads](#references---resources-and-good-reads)
- [Acknowledgments](#acknowledgments)

## Goals

For the majority of our JavaScript projects, our goals are to:

- **Ensure browser compatibility**, with the possible exceptions being:
  - Access to the file system.
  - Native bindings.
  - Network transports (uTP, udt, curveCP, etc) that are not available in the browser.
- **Don't break CommonJS's** `require`. This means that if someone requires a JavaScript module from the IPFS ecosystem, they should be able to require it and use browserify, webpack or other bundlers without having to worry about adding special shims for module internals.
- **Encourage contribution**.
- **Have great UX** for everyone involved.


## Module Lead Maintainers

For each JavaScript repository in the IPFS, libp2p, IPLD, or related GitHub orgs, there should be a single Captain specified in the Maintainers section of the README for that repository. The Captain is in charge of merging PRs, keeping issues up to date, and overall quality of a repository.

Sometimes, a Captain may elect to have other maintainers that also have merge ability and commit access to the main repo. These maintainers can help out, but defer to the Captain as the person in charge of maintaining quality across the repo. It is important that this distinction is explicit; if there are long-standing PRs or issues, it is ultimately up to the Captain to gather information about the issue or PR. A Captain only makes a decision if he _needs_ to and _all_ methods of discussion are exhausted. Our community strives to trust the Captain as someone who ultimately has the most knowledge of a repo (even if they are also opinionated, and even if they have to spend effort to source that knowledge). This may change in the future, if we go with more non-hierarchical model.

Repositories which do not have Captains will show up in red on [Project Repos](https://project-repos.ipfs.io). Please open an issue in the repository asking for a captain to be nominated if none is provided.

If you would like to become a maintainer (or lieutenant, or first mate, or whatever nautical metaphor you prefer), please open an issue about it! Chances are that we would love to have more help.

## Contributing

Please follow the conventions described in this document.

When reporting a bug, if possible, provide a way for us to reproduce it (or even better, write a test that fails with your case).

Always run tests before pushing and PR'ing your code.

### Guidelines

#### Linting & Code Style

IPFS JavaScript projects default to [standard](https://github.com/feross/standard) code style. It is a clean codestyle, and its adoption is increasing significantly, making the code that we write familiar to the majority of the developers.

However, we've added an extra linting rule: Enforce the use of [strict mode](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode). This avoids issues we had when using ES2015 features outside of strict mode. We enforce this rule by using [eslint](http://eslint.org/) and extending [standard module](https://github.com/feross/standard) with the [eslint-config-standard](https://github.com/feross/eslint-config-standard).

Using [aegir-lint](#aegir) will help you do this easily; it automatically lints your code.

#### Testing

Since `js-ipfs` is meant to be both a Node.js and Browser app, we strongly recommend having tests that run in both platforms, always. For most cases, we use [mocha](http://mochajs.org) to run write the tests and [karma](http://karma-runner.github.io) to automate the test execution in the browser. This solution has been extremely convenient.

#### Releasing

Each time a new release happens, these are the steps we follow to make sure nothing gets left out:

1. Run linting
2. Run all tests
3. Build all three different versions described on the build
4. Bump the version in `package.json`
5. Commit the version bump
6. Create a git tag
7. Push to GitHub
8. Publish to npm

#### Documentation

We use [documentation.js](https://github.com/documentationjs/documentation/tree/master/docs) to document our JavaScript repositories. For each repo, we use [this gulp task](https://github.com/documentationjs/gulp-documentation). An example for how to use JSDoc to document everything can be seen in [this PR to js-ipfs](https://github.com/ipfs/js-ipfs/pull/651). Ideally, we create a `docs` folder in each repository, and make sure it is not tracked to git.

We use [`aegir-docs`](https://github.com/dignifiedquire/aegir) for the actual generation, which relies on JSDoc style comments. For more on aegir, see [the section below](#aegir).

### Commits

We have very precise rules over how our git commit messages can be formatted.
This leads to more readable messages that are easy to follow when
looking through the project history.  But also,
we use the git commit messages to generate the change log.

The commit message formatting can be added using a typical git workflow or
through the use of a CLI wizard ([Commitizen](https://github.com/commitizen/cz-cli)).

#### Commit Message Format

Each commit message consists of a header, a body and a footer.
The header has a special format that includes a type, a scope and a subject:

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The header is mandatory and the scope of the header is optional.

Any line of the commit message cannot be longer 100 characters! This allows the message to be easier
to read on GitHub as well as in various git tools.

#### Revert

If the commit reverts a previous commit, it should begin with `revert: `,
followed by the header of the reverted commit. In the body it should
say: `This reverts commit <hash>.`, where the hash is the SHA of the commit being reverted.

#### Type

Must be one of the following:

* **feat**: A new feature
* **fix**: A bug fix
* **docs**: Documentation only changes
* **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing
  semi-colons, etc)
* **refactor**: A code change that neither fixes a bug nor adds a feature
* **perf**: A code change that improves performance
* **test**: Adding missing tests
* **chore**: Changes to the build process or auxiliary tools and libraries such as documentation
  generation

#### Scope

The scope could be anything specifying the place of the commit change. For example `api`,
`cli`, etc...

#### Subject

The subject contains a succinct description of the change:

* use the imperative, present tense: "change" not "changed" nor "changes"
* don't capitalize first letter
* no dot (.) at the end

#### Body

Just as in the subject, use the imperative, present tense: "change" not "changed" nor "changes".
The body should include the motivation for the change and contrast this with previous behavior.

#### Footer

The footer should contain any information about breaking changes and is also the place to
reference GitHub issues that this commit closes.

**Breaking Changes** should start with the word `BREAKING CHANGE:` with a space or two newlines. The rest of the commit message is then used for this.

#### Examples

```
feat(pencil): add 'graphiteWidth' option
```

```
fix(graphite): stop graphite breaking when width < 0.1

Closes #28
```

```
perf(pencil): remove graphiteWidth option

BREAKING CHANGE: The graphiteWidth option has been removed. The default graphite width of 10mm is always used for performance reason.
```

```
revert: feat(pencil): add 'graphiteWidth' option

This reverts commit 667ecc1654a317a13331b17617d973392f415f02.
```

#### References

This commit strategy is based on:

- https://github.com/conventional-changelog/conventional-changelog-angular/blob/master/convention.md
- https://github.com/angular/angular.js/blob/master/CONTRIBUTING.md#commit

More details about the commit convention can also be found in this [document](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y).

### Pull Requests

There should be no dependencies that rely on commits. Instead, there should be WIP PR and each PR that depends on other WIP PR should list what it depends on. Yes, everyone will have to do the extra work of `npm link`ing everything, but this helps us have a cleaner workflow.

## Aegir

We've created [a module](https://github.com/dignifiedquire/aegir) to help us achieve all of the above with minimal effort. Feel free to also use it for your projects. Feedback is appreciated!

#### ...for maintainers

##### Setting up `aegir`

There are a couple of binaries that `aegir` provides for you to use

```sh
> aegir lint
> aegir test
> aegir test -t browser
> aegir test -t node
> aegir test -t webworker
> aegir build
> aegir release
> aegir release --type minor
> aegir release --type major
```

If you prefer using npm scripts, you can set them up in your package.json:

```json
{
  "scripts": {
    "lint": "aegir lint",
    "build": "aegir build",
    "test": "aegir test",
    "test:node": "aegir test -t node",
    "test:browser": "aegir test -t browser",
    "release": "aegir release",
    "coverage": "aegir coverage",
    "coverage-publish": "aegir coverage publish"
  }
}
```

You also need to add it your `devDependencies` by running:

```sh
$ npm install --save-dev aegir
```

##### Directory Structure

To reduce the amount of configuration, aegir expects your source code to be in `src` and your test files in `test`.

```sh
├── dist # auto-generated by the transpile and minification task.
│   ├── index.js
│   └── index.min.js
├── lib  # auto-generated source tree, transpiled using babel. Makes the code es5 compatible
│   ├── index.js
│   └── ...
├── src  # source code. Can use the latest features (ES2015) in JavaScript.
│   ├── index.js
│   └── ...
├── test # tests folder
│   ├── node.js    # Node specific test setup
│   ├── browser.js # Browser specific test setup
│   ├── mytest.spec.js # All files ending in .spec.js are considered test files to be run
│   └── ...
├── package.json
├── README.md
├── CONTRIBUTING.md
├── circle.yml
├── .travis.yml
├── .npmignore
├── .gitignore
└── node_modules
```

##### Continuous integration

You can find samples for [Travis](https://github.com/ipfs/ci-sync/blob/master/configs/.travis.yml) and [circle](https://github.com/ipfs/ci-sync/blob/master/configs/circle.yml) in the examples folder.

We also use [coveralls.io](https://coveralls.io/) to automatically publish coverage reports. This is done from travis using this:

```yml
script:
  - npm run coverage
after_success:
  - npm run coverage publish --providers coveralls
```

##### `.gitignore`

To avoid checking in unwanted files, the `.gitignore` file should follow the [example](examples/.gitignore). This is if you are using `aegir` - smaller projects can use smaller `.gitignore` files.

##### `.npmignore`

NPM uses the `.gitignore` by default, so we have to add a `.npmignore` file to ensure we actually ship `lib` and `dist` files. You can use this [example](examples/.npmignore) to get started.

##### Dependency management

We suggest either of these:

- [david-dm](https://david-dm.org/)
- [greenkeeper](http://greenkeeper.io/) to keep your dependencies up to date.

Every module below 1.0.0 should use `~` instead of `^`.

##### Pre-Commit

[precommit](https://www.npmjs.com/package/pre-commit) helps us check code style run the tests on every commit. In your `package.json`:

```json
"pre-commit": [
  "lint",
  "test"
]
```

##### Building

You can get a bundled version by running `npm run build`, an npm script we add to the `package.json`. You can find the generated bundle in the `/dist` folder. This is available for every project that uses `aegir`.

#### ...for consumers

For use in the browser through script tags, there are regular and minified versions in the npm release.

You can use [unpkg](https://unpkg.com/) to include those:

```html
<script src="https://unpkg.com/ipfs-api/dist/index.js"></script>
<script src="https://unpkg.com/ipfs-api/dist/index.min.js"></script>
```

If you install the module through npm, you can require it using:

```js
const API = require('ipfs-api')
```

## FAQ


#### Why are you not using XYZ?

There are two possibilities: either it didn’t work out for us, or we don’t know about it. If you think we might have missed it please tell us, but please believe us if we say we tried and it didn’t work for us.

#### Why not use simple npm scripts instead of gulp?

Gulp is not a hard dependency. It’s just a simple way to structure our tasks at the moment. Usually projects only depend on the aegir binaries completely hiding the fact that we are using gulp under the hood. So we are free if we want to switch it out without any issues. We all enjoy npm scripts, and are using them to call the aegir binaries, but there is no nice way of sharing them yet.

#### Where are all the semicolons?

Our linting rules are compatible with [standard](https://github.com/feross/standard), which has many examples on documentation on this. Please go there and read it if you're still curious.

#### Why are you bothering with ES2015 and all this build setup?

We want to see the web move forward, and some of us enjoy writing their JavaScript with things like `const` and arrow functions.

#### Do I have to use ES2015, Babel and aegir in my project?

No.

#### Do I have to bundle everything with webpack?

No. But other people might ask you to at some point, so it may be better to be prepared.

#### Why are you doing this?

Because it saves us hours every single day. This tooling is the result of a lot of effort, thought, and hard learning. Its goal is to minimize process road bumps and provide a unified low-friction workflow for contributors.

## Code of Conduct

Any IPFS JavaScript project follows the same [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md) applied to the whole IPFS ecosystem.

## References - Resources and good reads

- Comparison between WebPack, browserify, requirejs, jspm and rollup - [https://github.com/webpack/docs/wiki/comparison](https://github.com/webpack/docs/wiki/comparison)
- [The cost of transpiling ES2015 in 2016](https://github.com/samccone/The-cost-of-transpiling-es2015-in-2016)
- [standardjs.com](http://standardjs.com/)

## Acknowledgments

This project would not be possible without the hard work of many many people. So a big shout out to all contributors to these projects:

- [eslint](https://github.com/eslint/eslint/graphs/contributors)
- [standard](https://github.com/feross/standard/graphs/contributors)
- [karma](https://github.com/karma-runner/karma/graphs/contributors)
- [mocha](https://github.com/mochajs/mocha/graphs/contributors)
- [chai](https://github.com/chaijs/chai/graphs/contributors)
- [webpack](https://github.com/webpack/webpack/graphs/contributors)
- [babel](https://github.com/babel/babel/graphs/contributors)
