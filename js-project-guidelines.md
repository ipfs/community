Guidelines for JavaScript project
=================================

> This document contains the guidelines that shall be followed for JavaScript projects under the IPFS org. These guidelines result from battle earned experience in building JavaScript applications and modules that are reusable, work in the browser and that offer a good UX for developers and consumers.

## Motivation

The IPFS community has faced several challenges through the process of creating a JavaScript implementation of IPFS and satellite modules that contribute to the IPFS ecosystem on JavaScript land. These hurdles were overcome through a process of continuous experimentation, iteration and constant feedback, so that the JavaScript codebase developed could run in the latest versions of Node.js and modern Browsers, without locking it to a subset of the JavaScript language. In fact, one of the main concerns of setting these guidelines is that the path for experimentation is open, being that es6, es7, typescript, etc.

## Goals

In each JavaScript project/module, our goal is to ensure:

- Browser compatibility, possible exceptions are:
  - access to the file system.
  - native bindings.
  - network transports(uTP, udt, curveCP, etc) that are not available in the browser.
- Must not break CommonJS `require`. This means that if someone requires a JavaScript module from the IPFS ecosystem, they should be able to require it and use browserify, webpack or other bundler, without having to worry on adding special shims for what is internal to the module itself.
- Make the UX to contribute and develop great, including a good guide, saving a considerable amount of time that can be use for productivity.

## The guidelines

We've researched and experimented with the options available in the JavaScript ecosystem. This document describes the collection of the design and implementation decisions that have been made, when it comes to:

- project stucture.
- code style.
- continuous integration.
- tests.
- tasks (asset pipeline, transpiling, releasing, etc).
- dependency management.

Our tool picks for each of this dimensions are not set in stone, nor do we plan in any way of halting our search to improve them.

#### a) Linting & Code Style

IPFS JavaScript projects default to [standard](https://github.com/feross/standard) codestyle. However we've added an extra rule to enforce the use of [strict mode](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode) to avoid issues we had when using ES2015
features outside of strict mode. We enforce this rule by using [eslint](http://eslint.org/) and extending [standard module](https://github.com/feross/standard) with the [eslint-config-standard](https://github.com/feross/eslint-config-standard).

#### b) Test

By default, the `js-ipfs` codebase is designed to be run in the browser and Node.js, this means we require to test in both platforms. Currently, we run tests on Node.js 4 and 5 and the latest stable releases of Chrome, Firefox, Safari and Edge .  Even this is quite a large target to hit, so our tests need to reflect that. Testing for Node.js is straightforward for the most part. The browser though wants a bit more love. So we are using [karma](http://karma-runner.github.io) to automate the test execution in the browser, as we are familiar with it and it has been working very well for us.

To reduce friction and overhead, we share the test framework [mocha](http://mochajs.org/) and the assertion library [chai](http://chaijs.com/) between the browser and Node.js.

Note that projects that are not necessarily part of the `js-ipfs` ecosystem (such as [registry-mirror](https://github.com/diasdavid/registry-mirror) and others), don't require browser testing.

#### c) Build

When it came to build systems, we had a considerable amount of options at our disposal. After a throughout process of experimentation, tinkering and learning from other open source projects, we've settled on [webpack](http://webpack.github.io/). It gives us a large control over every detail when bundling and we feel quite comfortable with it at this point.

As we are using some features of ES2015 we also need something to ensure our code runs on the platforms that do not have full support yet. For this [babel](http://babeljs.io/) is the tool of our choice.

When others consume our code though, we don’t want to enforce these choices on them. So that’s why our build process in `dignified.js` creates multiple versions for everyone to use.

- __Raw ES2015 version__, ready to be consumed by platforms that understand Node.js based require and most of ES2015.
- __Raw ES5 version__, ready to be consumed by platforms that understand Node.js based require and ES5.
- __Concatenated ES5 version__, ready to be consumed by browsers through a script tag, where size does not matter.
- __Concatenated and minified ES5 version__, ready to be consumed by browsers through a script tag, where size matters.

#### d) Release

Releasing a new version entails:

1. Run linting
2. Run all tests
3. Build all three different versions described on section c)
4. Bump the version in package.json
5. Commit the version bump
6. Create a git tag
7. Push to github
8. Publish to npm

### Day to day operations...

#### ...for maintainers

##### Setting up `dignified.js`

There are a couple of binaries that dignified.js provides for you to use

```sh
$ dignified-lint
$ dignified-test
$ dignified-test browser
$ dignified-test node
$ dignified-build
$ dignified-release major
$ dignified-release minor
$ dignified-release
```

If you prefer using npm scripts, you can set them up in your package.json:

```json
{
  "scripts": {
    "lint": "dignified-lint",
    "build": "dignified-build",
    "test": "dignified-test",
    "test:node": "dignified-test node",
    "test:browser": "dignified-test browser",
    "release": "dignified-release"
  }
}
```

You also need to add it your `devDependencies` by running

```sh
$ npm install --save-dev dignified.js
```

##### Directory Structure

To reduce the amount of configuration dignified.js expects your source code to be in the src and
your test files in the test directory.

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
└── node_modules
```

##### Default `require`

Inside the package.json, the main file exported is the one from the auto-generated source tree,
transpiled using babel. While the original gets pointed by the `jsnext:main` key.

```JavaScript
"main": "lib/index.js",
"jsnext:main": "src/index.js",
```

##### Continuous integration

There should be `.travis.yml` and `circle.yml` configuration file present and both services should be enabled on the repository. Here you can find samples for [travis](examples/travis.example.yml)
and [circle](examples/circle.example.yml).

##### `.gitignore`

To avoid checking in the dist and lib folders, the `.gitignore` file should at least contain

```
dist
lib
**/node_modules
**/*.log
coverage
```

##### Dependency management

We use:

- [david-dm](https://david-dm.org/)
- [greenkeeper](http://greenkeeper.io/) to keep your dependencies up to date.

##### PreCommit

We also use [precommit](https://www.npmjs.com/package/pre-commit) to enforce running code style verification and tests on every commit. So you should have

```json
"pre-commit": [
  "lint",
  "test"
]
```

in your `package.json`


#### ...for consumers

Consumers of our modules should not have to think about our set up, unless they want to. So we provide four different ways of consuming our code.

For use in the browser through script tags there is regular and a minified version in the npm release.

An example of using those is through [npmcdn](https://npmcdn.com/),

```html
<script src="https://npmcdn.com/ipfs-api/dist/index.js"></script>
<script src="https://npmcdn.com/ipfs-api/dist/index.min.js"></script>
```

If you install the module through npm and require it, you receive the ES5 version ready to be used in Node.js or a module bundler like browserify.

```js
var API = require(‘ipfs-api’)
```

If you use module bundler that understands ES2015 like webpack@2 or rollup you can use this syntax to get the original ES2015 source.

```js
const API = require(‘ipfs-api/src’)
```

### FA 

#### Why are you not using XYZ?

There are two possibilities, either it didn’t work out for us, or we don’t know about it. If you think we might have missed it please tell us, but please believe us if we say we tried and it didn’t work for us.

#### Ugh, gulp why not use simple npm scripts?

Gulp is not a hard dependency, it’s just a simple way to structure our tasks at the moment. Usually projects only depend on the dignified binaries completely hiding the fact that we are using gulp under the hood. So we are free if we want to switch it out without any issues. We all enjoy npm scripts, and are using them to call the dignified binaries, but there is no nice way of sharing them yet.

#### Where are all the semicolons?

Our linting rules are compatible with [standard](https://github.com/feross/standard) which has many examples on documentation on this. Please go there and read it.

#### Why are you bothering with ES2015 and all this build setup?

We want to see the web move forward, and some of us enjoy writing their JavaScript with things like const and arrow functions.

#### Why are doing this?

Because it saves us hours every single day. Hours in which we don’t have to think about these things or argue with someone about why we are doing it.

# Contributing

Follow these conventions described in this document.

When reporting a bug, if possible, provide a way to reproduce or even better, write a test that fails with your case

Always run tests before pushing and PR'ing your code

# Code of Conduct

Any IPFS JavaScript project follows the same [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md) applied to the whole IPFS ecosystem.

# References - Resources and good reads

- Comparission between WebPack, browserify, requirejs, jspm and rollup - [https://github.com/webpack/docs/wiki/comparison](https://github.com/webpack/docs/wiki/comparison)
- [The cost of transpiling ES2015 in 2016](https://github.com/samccone/The-cost-of-transpiling-es2015-in-2016)
- [standardjs.com](http://standardjs.com/)

# Acknowledgment

This project would not be possible without the hard work of many many people. So a big shout out to all contributors of these projects

- [eslint](https://github.com/eslint/eslint/graphs/contributors)
- [standard](https://github.com/feross/standard/graphs/contributors)
- [karma](https://github.com/karma-runner/karma/graphs/contributors)
- [mocha](https://github.com/mochajs/mocha/graphs/contributors)
- [chai](https://github.com/chaijs/chai/graphs/contributors)
- [webpack](https://github.com/webpack/webpack/graphs/contributors)
- [babel](https://github.com/babel/babel/graphs/contributors)




