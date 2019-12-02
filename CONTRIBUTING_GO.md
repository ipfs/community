# Contribute

go-ipfs is MIT + Apache 2 licensed open source software. We welcome contributions big and
small! Take a look at the [community contributing notes](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md) for general guidelines. 

Please make sure to check out the [issues](https://github.com/ipfs/go-ipfs/issues). Search the closed ones before reporting things, and (if you can!) help us with open ones.

Please note that the go-ipfs issues are only for bug reports and directly actionable features. Check [the IPFS Community guide on reporting issues](https://github.com/ipfs/community/blob/master/contributing.md#reporting-issues) if your question doesn't fit as a bug report or an actionable feature, and our [guide on opening issues](https://github.com/ipfs/go-ipfs/blob/master/docs/github-issue-guide.md) if you are not sure how to make an issue here.

If you're looking to help out, head to the [captain's log](https://github.com/ipfs/go-ipfs/issues/2247) and
try picking up an issue from there.

## Table of Contents

- [Go Contribution Guidelines](#go-contribution-guidelines)
    - [A Short Introduction](#a-short-introduction)
    - [Branch Names](#branch-names)
    - [Commit Requirements](#commit-requirements)
        - [Import Format](#import-format)
        - [Commit Testing](#commit-testing)
        - [Commit messages](#commit-messages)
- [Contributor Principles](#contributor-principles)
- [Code Change Policy](#code-change-policy)
- [Pull Request Reviews](#pull-request-reviews)
- [Code of Conduct](#code-of-conduct)

## Go Contribution Guidelines

Many IPFS projects use Go. Please follow these guidelines when contributing go code to an IPFS repository.

### A Short Introduction

If you are new to our Go development workflow:

- Ensure you have [Go installed on your system](https://golang.org/doc/install).
- Make sure that you have the environment variable `GOPATH` set somewhere, e.g. `$HOME/gopkg`
- Clone `https://github.com/ipfs/go-ipfs`.
- You are now free to make changes to the codebase as you please.
- You can build the binary by running `go build ./cmd/ipfs` from the go-ipfs directory.
  - NOTE: when making changes remember to restart your daemon to ensure its running your new code.
  
### Branch Names

If you are working on a new feature, prefix your branch name with `feat/`. If you are fixing an issue, `fix/`. If you are simply adding tests, `test/`. If you are adding documentation, `doc/`. If your changeset doesn't fall into one of these categories, use your best judgement and come up with your own short prefix.

After that, try to signal what part of the codebase this branch is working on. For example, if you are adding a new test to the DHT that tests for nil providers being returned, then `test/dht/nil-provs` would be acceptable. If your changes don't fall cleanly in a single module, you can use a more general descriptor, or leave it off in favor of a slightly more wordy description.

Please also try to keep branch names around or under 20 characters. It keeps things a little cleaner overall. Also try to avoid putting issue numbers in branch names, it takes up space without providing any immediately relevant context about the changeset.

A few examples of good branch names:

- `feat/cmds/object-diff`
  - For a Pull Request that adds an `ipfs object diff` command.
- `test/dag/cache-invalid`
  - For adding tests around the merkledag's cache invalidation code.
- `doc/unixfs/pkg-desc`
  - For a branch that adds or improves the package description in unixfs.
  
### Commit Requirements

- Run `go fmt` before pushing any code.
- NOTE, our CI (CodeClimate) will automatically run linting for your PR and highlight specific errors. You may also run `golint` and `go vet` -- some things (like protobuf files) are expected to fail and this includes all linting errors for the whole project.

#### Import Format

We strive to use the following convention when it comes to imports. First list stdlib imports, then local repository imports and then all other external imports. Separate them using one empty new line so they are not reordered by `go fmt` or `goimports`.

Example:

```go
import (
	"context"
	"errors"
	"sync"
	"sync/atomic"

	blocks "github.com/ipfs/go-ipfs/blocks"
	dshelp "github.com/ipfs/go-ipfs/thirdparty/ds-help"

	logging "gx/ipfs/QmSpJByNKFX1sCsHBEp3R73FL4NF6FnQTEGyNAXHm2GS52/go-log"
	ds "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore"
	dsns "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore/namespace"
	dsq "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore/query"
	cid "gx/ipfs/QmcEcrBAMrwMyhSjXt4yfyPpzgSuV8HLHavnfmiKCSRqZU/go-cid"
)
```

If a package name isn't the same as its directory, use the explicit name.

#### Commit Testing

All commits in a PR must pass tests. If they don't, fix the commits and/or [squash them](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#Squashing-Commits) so that they do pass the tests. This should be done so that we can use git-bisect easily.

We use CI tests which run when you push to your branch. To run the tests locally, run `make` to see the full set of testing targets. Generally `make test` is your best bet.

#### Commit messages

Commit messages must start with a short subject line, followed by an optional, 
more detailed explanatory text which is separated from the summary by an empty line. 
We _used_ to require license signoff commit messages (enforced by [GitCop](https://gitcop.com)) to ensure that all contributors agreed with the [developer certificate of origin](docs/developer-certificate-of-origin) and with licensing their contribution under the MIT license. However, with the move to a dual MIT + Apache 2 license going forward we have relaxed that requirement! From now on, commit message trailers are entirely optional.

## Contributor Principles

These principles are a living document and should be updated as-needed to better serve the go-ipfs community.

In order of precedence:

1. **Build the distributed peer-to-peer web.** This is our objective and aim - everything we do is in service of this goal and we only compromise our other principles if needed to achieve this.
2. **Don't break the IPFS ecosystem.** This isn't "don't break protocols"; we do occasionally break protocols and APIs (with care) when we know that users won't notice it. However, users trust us to not break their workflows/projects. If we do, we'll lose that trust and those users.
3. **Take ownership.** If you're working on something, own it and see it through. Given that (a) we don't have managers and (b) we don't work synchronously, coordination can be difficult. To make up for this, if you want something to happen, you have to make it happen (that may mean calling a meeting, bugging people, fixing unrelated issues, designing alternative solutions, etc.).
4. **Ask for forgiveness, not permission.** To enable P.3, if you're having trouble getting people to move on something, err on the side of getting things done (bounded by P.1 and P.2). Note: This doesn't apply when you *know* you'll need to ask for forgiveness... use your best judgment.

## Code Change Policy

The go code change policy must balance "not breaking things" with "getting things done" and should be read in that spirit. Use your best judgment when making changes and PRs; these rules are not set in stone.

**How can the codebase be changed?**

All changes go through PRs and should pass CI.

* Larger changes should be discussed in an issue *before* work is started to avoid wasting time.
* WIP (work in progress), RFC (request for comments) changes should be marked as such to avoid confusion. Not doing so can be frustrating for reviewers, who may think your PR is ready for a thorough review.

**Who can merge a PR?**

In general, changes should be merged by, in-order of preference:

* The repo's maintainer (defacto or otherwise).
* The PR author (if they have write access).
* A PR reviewer (someone who has reviewed the *entire* PR).

In general, a PR should be merged by someone that knows it's ready and *should not* be merged by someone just because they see that it has been approved. However, use your discretion: reviewers (with write access) should feel free to merge small bug fixes, etc. immediately.

The *exception* to this rule is the [go-ipfs](http://github.com/ipfs/go-ipfs) repository itself. As changes to this repo directly affect users, only the current maintainer of go-ipfs may perform merges. This is in service of P.2.

**When can a PR be merged?**

* Small changes should get one review from someone (preferably on the go team if it's a code change) who can sanity check the change.
* Large changes, especially interface changes, should get signoffs from anyone with a "stake". This is *usually* just the reviewers that GitHub recommends. However, if you're not sure, say so and let someone else perform the actual merge. Never be afraid to ask for guidance.
* As PRs to the go-ipfs repo can only be merged by the maintainer, PRs that are *ready* to be merged should be labeled as RFM (ready for merge).

## Pull Request Reviews

PRs and PR reviews are an important part of the our project process. As a PR contributor your goal is to help others
understand your PR as quickly and easily as possible. 
- Review your own PR before asking others. Dead code, test code, typos all will slip into PRs occasionally, and that's fine. But give it a pass first to help reviewers to focus on the actual code being submitted.
- Provide context for your PR. Provide a description of the problem your PR addresses and the solution you have provided in your initial description to help readers get started. It doesn't have to be extensive - a few sentences each.
- If there are parts of your PR you are especially unsure about, or that you know will be tricky to understand, point them out ahead of time and explain them as best as possible.

When reviewing a PR:
- All questions are good! The goal is to understand if all code is both sufficient and necessary, and first few rounds can just be adding more info to the PR via clarifications.
- Block out sufficient time for actually going as deep as possible through the code paths. 
- Consider the test coverage of the changes. Are there tests?  Do they run?
- Don't be shy. Reviewing PRs is an important part of learning the codebase. Pair-reviewing with another contributor is a helpful technique if a PR is particularly new or complex. 

## Code of Conduct

Any IPFS Go project follows the same [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md) applied to the whole IPFS ecosystem.
