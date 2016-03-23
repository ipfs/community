# dignified.js

In the past few months, I have written a good amount of JavaScript for
the [IPFS](https://ipfs.io/) project. I have come to expect to spend
some time on configuring things, but this time around I was repeating
myself so much that I thought to myself, there has to be a better way.

Recently I found [hjs-webpack](https://github.com/HenrikJoreteg/hjs-webpack), which
aims to drastically reduce the configuration overhead in your project
when using [webpack](http://webpack.github.io/) and [babel]((http://babeljs.io/).
Inspired by this I set out to improve upon the way we set up and
develop JavaScript modules for IPFS.
So I called [David](https://github.com/diasdavid) and [Nathan](https://github.com/nginnever),
who I've been working with on most of these modules, to figure out the
best way of moving forward. The result of this conversation is dignified.js.

> dignified.js at it’s core aims to be a predictable and easy to update solution to JavaScript module management for the IPFS project.

Where module management encompasses these four main
aspects, a) linting, b) testing, c) building and bundling and d) releasing.

For each of these four steps we have chosen specific tools in the
past that worked for us. They are partially captured in our
[JavaScript contribution guidelines](https://github.com/ipfs/community/blob/master/js-contribution-guidelines.md). dignified.js aims to implement
all these guidelines, in an easy to use package.

These tools are not set in stone, nor do we plan in any way of halting
our search to improve them. But we do plan on stopping ourselves
from repeating the same research everytime we create a new module.

To bring everyone on the same page, here is a rundown of our current
tools in use.

#### a) Linting & Code Style

We have been using [standard](https://github.com/feross/standard) as the
code style of our choice for some time now and are very happy with it.
The only addition that we are adding is an enforced use of
[strict mode](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode) to avoid issues we had when using ES2015
features outside of strict mode. For added flexibility we are using
[eslint](http://eslint.org/) directly, with the [eslint-config-standard](https://github.com/feross/eslint-config-standard) instead of the regular [standard module](https://github.com/feross/standard).

#### b) Test

All the code we write is expected to run in browser as well as in Node.js.
We restrict ourselves to Node.js 4 and 5 and the latest stable releases
of Chrome, Firefox, Safari and Edge at the moment.  Even this is quite a
large target to hit, so our tests need to reflect that. Testing for Node.js
is straightforward for the most part. The browser though wants a
little bit more love. So we are using [karma](http://karma-runner.github.io)
to automate the test execution in the browser, as we are very familiar with
it (given Im the maintainer of it).

To reduce friction and overhead as much as possible, we share the test
framework [mocha](http://mochajs.org/) and the assertion library [chai](http://chaijs.com/) between the browser and Node.js.

#### c) Build
<
There are a lot of build systems out there, and I have probably used my
fair share of them in the past ([r.js](http://requirejs.org/), [rollup](http://rollupjs.org/), [browserify](http://browserify.org/), [webpack](http://webpack.github.io/)). They all have their strength and weaknesses and at the
end of the day it matters that the tool does what you want it to do. For
that reason we settled on using webpack as it gives us a large control over
every detail when bundling and we feel quite comfortable with it at this
point.

As we are using some features of ES2015 we also need something to ensure
our code runs on the platforms that do not support it yet, or just
partially, so we are using [babel](http://babeljs.io/) for this.

When others consume our code though, we don’t want to enforce these choices
on them. So that’s why our build process in dignified.js creates multiple
versions for (hopefully) everyone to use.

- __Raw ES2015 version__, ready to be consumed by platforms that understand Node.js based require and most of ES2015.
- __Raw ES5 version__, ready to be consumed by platforms that understand Node.js based require and ES5.
- __Concatenated ES5 version__, ready to be consumed by browsers through a script tag, where size does not matter.
- __Concatenated and minified ES5 version__, ready to be consumed by browsers through a script tag, where size matters.

#### d) Release

This is actually quite simple, we have a [gulp](http://gulpjs.com/) task
that automatically runs all things needed for a release so we dont miss
anything of the above mentioned things. It will:

1. Run linting
2. Run the tests
3. Build all versions
4. Bump the version in package.json
5. Commit the version bump
6. Create a git tag
7. Push this to github
8. Publish to npm

### Day to day operations...

#### ...for maintainers

There are a couple of binaries that dignified.js provides for you to use

```sh
$ dignified-lint$ dignified-test
$ dignified-test browser
$ dignified-test node
$ dignified-build
$ dignified release major
$ dignified release minor
$ dignified release
```
these can be setup in your package.json as npm scripts:

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

To reduce the amount of configuration dignified.js expects your source code to be in the src and your test files in the test directory.

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

#### ...for consumers

Consumers of our modules should not have to think about what build system
or what features of ES2015 we are using, unless they want to.
So they have three ways of consuming our code where they don’t
have to think about this and one way where they can configure things
to their liking.

For use in the browser there is regular and a minified version in the
npm release which you can use for example through [npmcdn](https://npmcdn.com/)
to easily embed them into your html

```html
<script src="https://npmcdn.com/ipfs-api/dist/index.js"></script>
<script src="https://npmcdn.com/ipfs-api/dist/index.min.js"></script>
```

If you install the module through npm and require it, you receive the
ES5 version ready to be used in Node.js or a module bundler like browserify.

```js
var API = require(‘ipfs-api’)
```

If you use module bundler that understands ES2015 like webpack@2 or
rollup you can use this syntax to get the original ES2015 source.

```js
const API = require(‘ipfs-api/src’)
```

### FAQ

#### Why are you not using XYZ?

There are two possibilities, either it didn’t work out for us, or
we don’t know about it. If you think we might have missed it please tell us,
but please believe us if we say we tried and it didn’t work for us.

#### Ugh, gulp why not use simple npm scripts?

Gulp is not a hard dependency, it’s just a simple way to structure our tasks
at the moment. Usually projects only depend on the dignified binaries
completely hiding the fact that we are using gulp under the hood. So we are
free if we want to to switch it out with out any issues. We all enjoy npm
scripts, and are using them to call the dignified binaries, but sadly there
is no nice way of sharing them yet so for now we are doing it in this way.

#### Where are all the semicolons?

Our linting rules are fully compatible with [standard](https://github.com/feross/standard)
which has many examples on documentation on this. Please go there and read it.

#### Why are you bothering with ES2015 and all this build setup?

We want to see the web move forward, and some of us really enjoy writing
their JavaScript with things like const and arrow functions.

#### Why are doing this again?

Because it saves us hours every single day, where we don’t have to think
about this or argue with someone about why we are doing it.

With a lot of sweat and all the best from

[@dignifiedquire](http://github.com/dignifiedquire/)
