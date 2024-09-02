# JavaScript Contributing Guidelines

These guidelines reflect our shared consensus on protocol and etiquette from what we've built so far.

Every single item that is presented here is the result of lots of experimentation; however that doesn't mean that there isn't a better way to do things. What we have below is simply what we've found to work best for us.

In this document you will find notes about:

- Project structure.
- Code style.
- Continuous integration.
- Tests.
- Tasks (asset pipeline, transpiling, releasing, etc).
- Dependency management.

Our toolkit for each of these is not set in stone, and we don't plan to halt our constant search for better tools. Get in touch if you've got ideas. [These are guidelines rather than rules](assets/CodeIsMoreLikeGuidelines.jpg).

## Table of Contents

- [Goals](#goals)
- [Contributing](#contributing)
  - [Guidelines](#guidelines)
    - [Supported Platforms](#supported-platforms)
    - [Linting & Code Style](#linting--code-style)
    - [Error Codes](#error-codes)
    - [Dependency Versions](#dependency-versions)
    - [Testing](#testing)
    - [Releasing](#releasing)
    - [Documentation](#documentation)
  - [Commits](#commits)
  - [Pull Requests](#pull-requests)
- [Aegir](#aegir)
  - [...for maintainers](#for-maintainers)
    - [Setting up `aegir`](#setting-up-aegir)
    - [Directory Structure](#directory-structure)
    - [Continuous integration](#continuous-integration)
    - [`.gitignore`](#gitignore)
    - [Dependency management](#dependency-management)
    - [Pre-Commit](#pre-commit)
    - [Building](#building)
  - [...for consumers](#for-consumers)
- [FAQ](#faq)
  - [Why are you not using XYZ?](#why-are-you-not-using-xyz)
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
  - Network transports (TCP, QUIC, etc) that are not available in the browser.
- **Don't break ESM's** `import`. This means that if someone imports a JavaScript module from the IPFS ecosystem, they should be able to require it and use esbuild, webpack or other bundlers without having to worry about adding special shims for module internals.
- **Encourage contribution**.
- **Have great UX** for everyone involved.

## Contributing

Please follow the conventions described in this document.

When reporting a bug, if possible, provide a way for us to reproduce it (or even better, write a test that fails with your case).

Always run tests before pushing your code and creating a PR.

### Guidelines

#### Supported Platforms

All projects that run [Unified CI](#continuous-integration) support the platforms that they run tests on.

These are:

* Node.js Active LTS and the default version of npm that is installed along with it
  * Projects may also support Current LTS
  * Please consult [nodejs.org](https://nodejs.org/) for LTS timeline and for the current Active/LTS version.
* The latest releases of "desktop" Chromium, FireFox and WebKit
* Electron
  * Main process only, latest release
* React-Native
  * We are attempting to add react-native support to all modules. This is complicated by our use of [package exports](https://webpack.js.org/guides/package-exports/) and rn's support [still being experimental](https://reactnative.dev/blog/2023/06/21/package-exports-support), please watch this space

We do not go out of our way to break compatibility with platforms, but we can only test on the above.  Where we require a recently released feature (such as an encryption algorithm or browser API) this will be noted by the [engines](https://docs.npmjs.com/cli/v9/configuring-npm/package-json#engines) field of the `package.json`.

Some modules do not support certain platforms, these should be easy to spot - e.g. `@libp2p/tcp` supports only Node.js and Electron because TCP does not work in web browsers.

#### Linting & Code Style

IPFS JavaScript projects default to [eslint-config-ipfs](https://github.com/ipfs/eslint-config-ipfs) which is based on [standard](https://github.com/feross/standard) code style. It is a clean codestyle, and its adoption is increasing significantly, making the code that we write familiar to the majority of the developers.

Using [aegir-lint](#aegir) will help you do this easily; it automatically lints your code.

#### Dependency Versions

Our rule is: Use ~ for everything below 1.0.0 and ^ for everything above 1.0.0. If you find a package.json that is not following this rule, please submit a PR.

The only exception to this is if a third party library accidentally releases a breaking change, in which case temporarily pin the dependency to a single version (e.g. `"my-dep": "1.0.0"`).

Using [aegir-check](#aegir) will show you if any of your dependency versions need changing to comply with this.

#### Testing

Since our modules are meant to be isomorphic as far as possible, we strongly recommend having tests that run in all supported platforms, always. For most cases, we use:

* [mocha](http://mochajs.org) to run write the tests
* [playwright-test](https://www.npmjs.com/package/playwright-test) to automate the test execution in browsers
* [electron-mocha](https://www.npmjs.com/package/electron-mocha) to run them in Electron.

This solution has been extremely convenient.

#### Releasing

Top-level modules such as [Helia](https://github.com/ipfs/helia) and [libp2p](https://github.com/libp2p/js-libp2p) use [release-please](https://github.com/googleapis/release-please) to aggregate changes and release them in a controllable way.

Other smaller modules use [semantic-release](https://www.npmjs.com/package/semantic-release) and [semantic-release-monorepo](https://www.npmjs.com/package/semantic-release-monorepo) to perform releases in an automated fashion at the end of every successful CI run on the default branch of the project.

See [Continuous Integration](#continuous-integration) below for the necessary configuration to accomplish this.

GitHub releases and `CHANGELOG.md` files are generated automatically by `release-please` or `semantic-release`. Sometimes it's useful to update the GitHub release with explanations of the `why` and not just the `what`.

For high-traffic modules, when breaking changes are shipped it's often useful to add [migration guides](https://github.com/libp2p/js-libp2p/tree/main/doc/migrations). These can be linked to from the GitHub release for visibility.

#### Documentation

Typed ESM projects will have documentation generated automatically from JSDoc comments in the codebase; TypeScript projects will accomplish the same thing by using the types directly.

A `gh-pages` branch will be created, and this should be published to via the GitHub project settings GitHub under `General > Pages > Build and deployment > Branch`.

This makes API docs available, and the types are linked through to from other modules published by aegir.

### Commits

We have guidelines for how our git commit messages should be formatted. This leads to more readable messages that are easy to follow when looking through the project history.  But also, we use the git commit messages to generate the change log.

The commit message formatting can be added using a typical git workflow or through the use of a CLI wizard ([Commitizen](https://github.com/commitizen/cz-cli)).

- **Type** - Must be one of the following:
  - **feat**: A new feature
  - **fix**: A bug fix
  - **docs**: Documentation only changes
  - **refactor**: A code change that neither fixes a bug nor adds a feature
  - **perf**: A code change that improves performance
  - **test**: Adding missing tests
  - **chore**: Changes to the build process or auxiliary tools and libraries such as documentation generation
- **Scope** - An optional scope can be added in parentheses specifying the place of the commit change. For example `api`, `cli`, etc...
- **Breaking Changes** - Should be identified by appending a `!` to the end of the type (e.g. `feat!: ...`). Start with the words `BREAKING CHANGE:` on a new line followed by a space or two new lines. The rest of the commit message is then used to describe in detail what was broken and the migration path (if there is one).  This will appear in the generated release notes.

Examples:

```
feat(pencil): add 'graphiteWidth' option
```

```
fix(graphite): stop graphite breaking when width < 0.1

Closes #28
```

```
perf(pencil)!: remove graphiteWidth option

BREAKING CHANGE: The graphiteWidth option has been removed. The default graphite width of 10mm is always used for performance reason.
```

```
revert: feat(pencil): add 'graphiteWidth' option

This reverts commit 667ecc1654a317a13331b17617d973392f415f02.
```

### Pull Requests

There should be no dependencies that rely on commits. Instead, there should be WIP PR and each PR that depends on other WIP PR should list what it depends on. Yes, everyone will have to do the extra work of `npm link`ing everything, but this helps us have a cleaner workflow.

## Aegir

We've created [a module](https://github.com/ipfs/aegir) to help us achieve all of the above with minimal effort. Feel free to also use it for your projects. Feedback is appreciated!

#### ...for maintainers

##### Setting up `aegir`

Start by adding [aegir](https://github.com/ipfs/aegir) to your `devDependencies` by running:

```sh
$ npm install --save-dev aegir
```

It provides several commands for you to use:

```sh
> aegir lint
> aegir lint --fix
> aegir test
> aegir test -t browser
> aegir test -t node
> aegir test -t webworker
> aegir test -t node --grep 'only run tests that match this'
> aegir clean
> aegir build
> aegir docs
```

##### Continuous Integration

All projects should be added to the [js.json file in protocol/.github](https://github.com/protocol/.github/blob/master/configs/js.json) to take advantage of the Unified CI platform.

This will add the [js-test-and-release.yml Github workflow](https://github.com/protocol/.github/blob/master/templates/.github/workflows/js-test-and-release.yml) that invokes npm scripts in various environments if they are defined.

The suggested scripts to add to your `package.json` are:

```json
{
  "scripts": {
    "clean": "aegir clean",
    "lint": "aegir lint",
    "dep-check": "aegir dep-check",
    "build": "aegir build",
    "test": "aegir test",
    "test:chrome": "aegir test -t browser --cov",
    "test:chrome-webworker": "aegir test -t webworker --cov",
    "test:firefox": "aegir test -t browser -- --browser firefox",
    "test:firefox-webworker": "aegir test -t webworker -- --browser firefox",
    "test:webkit": "aegir test -t browser -- --browser webkit",
    "test:webkit-webworker": "aegir test -t webworker -- --browser webkit",
    "test:node": "aegir test -t node --cov",
    "test:electron-main": "aegir test -t electron-main",
    "release": "aegir release",
    "docs": "aegir docs"
  }
}
```

##### `.gitignore`

To avoid checking in unwanted files, the `.gitignore` file should follow the [example](https://github.com/ipfs/aegir/blob/master/src/check-project/files/gitignore).

##### Dependency management

We suggest either of these to keep your dependencies up to date:

- [david-dm](https://www.npmjs.com/package/david)
- [dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuring-dependabot-version-updates)
- [synk](https://snyk.io/)

Every module below 1.0.0 should use `~` instead of `^`.

##### Building

You can get a bundled version by running `npm run build`, an npm script we add to the `package.json`. You can find the generated bundle in the `/dist` folder. This is available for every project that uses `aegir`.

#### ...for consumers

For use in the browser through script tags, there are regular and minified versions in the npm release.

You can use [unpkg](https://unpkg.com/) to include those:

```html
<script src="https://unpkg.com/helia/dist/index.js"></script>
<script src="https://unpkg.com/helia/dist/index.min.js"></script>
```

If you install the module through npm, you can require it using:

```js
import { createHelia } from 'helia'
```

## FAQ


#### Why are you not using XYZ?

There are two possibilities: either it didn’t work out for us, or we don’t know about it. If you think we might have missed it please tell us, but please believe us if we say we tried and it didn’t work for us.

#### Where are all the semicolons?

Our linting rules are compatible with [standard](https://github.com/feross/standard), which has many examples on documentation on this. Please go there and read it if you're still curious.

#### Why are you bothering with TypeScript and all this build setup?

We have a large number of modules that integrate together and we've found that the only way to do this at scale without increasing friction to burning point is to have a type system.

At the time of writing a type system based on TypeScript [may be coming to JavaScript](https://github.com/tc39/proposal-type-annotations) so we're only a little ahead of the curve on that front.

We've also found that having types means there's less magic in our codebases since it becomes harder to use the extreme ends of JavaScript's flexibility, making everything easier to follow, and lowering cognitive overhead and maintenance burden.

#### Do I have to use ESM/TypeScript and/or aegir in my project?

No, but you will find yourself solving problems that have already been solved.

#### Do I have to bundle everything with esbuild?

No. But other people might ask you to at some point, so it may be better to be prepared.

#### Why are you doing this?

Because it saves us hours every single day. This tooling is the result of a lot of effort, thought, and hard learning. Its goal is to minimize process road bumps and provide a unified low-friction workflow for contributors.

## Code of Conduct

Any IPFS JavaScript project follows the same [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md) applied to the whole IPFS ecosystem.

## References - Resources and good reads

- Comparison between modern build tools - [https://css-tricks.com/comparing-the-new-generation-of-build-tools/](https://css-tricks.com/comparing-the-new-generation-of-build-tools/)
- Esbuild benchmarks - [https://esbuild.github.io/faq/#benchmark-details](https://esbuild.github.io/faq/#benchmark-details)
- [The cost of transpiling ES2015 in 2016](https://github.com/samccone/The-cost-of-transpiling-es2015-in-2016)
- [standardjs.com](http://standardjs.com/)

## Acknowledgments

This project would not be possible without the hard work of many many people. So a big shout out to all contributors to these projects:

- [eslint](https://github.com/eslint/eslint/graphs/contributors)
- [standard](https://github.com/feross/standard/graphs/contributors)
- [mocha](https://github.com/mochajs/mocha/graphs/contributors)
- [chai](https://github.com/chaijs/chai/graphs/contributors)
- [esbuild](https://github.com/evanw/esbuild/graphs/contributors)
