# Contribute

go-ipfs is MIT licensed open source software. We welcome contributions big and
small! Take a look at the [community contributing notes](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md) for general guidelines. 

Please make sure to check out the [issues](https://github.com/ipfs/go-ipfs/issues). Search the closed ones before reporting things, and (if you can!) help us with open ones.

Please note that the go-ipfs issues are only for bug reports and directly actionable features. Check [the IPFS Community guide on reporting issues](https://github.com/ipfs/community/blob/master/contributing.md#reporting-issues) if your question doesn't fit as a bug report or an actionable feature, and our [guide on opening issues](https://github.com/ipfs/go-ipfs/blob/master/docs/github-issue-guide.md) if you are not sure how to make an issue here.

If you're looking to help out, head to the [captain's log](https://github.com/ipfs/go-ipfs/issues/2247) and
try picking up an issue from there.

## Table of Contents

- [Guidelines](#go-contribution-guidelines)
  - [Introduction](#a-short-introduction)
  - [Branch Names](#branch-names)
  - [Commit Requirements](#commit-requirements)
    - [Import Format](#import-format)
    - [Commit Testing](#commit-testing)
    - [Commit Messages](#commit-messages)
- [Code of Conduct](#code-of-conduct)

## Go Contribution Guidelines

Many IPFS projects use Go. Please follow these guidelines when contributing go code to an IPFS repository.

### A Short Introduction

If you are new to our Go development workflow:

- Ensure you have [Go installed on your system](https://golang.org/doc/install).
- Make sure that you have the environment variable `GOPATH` set somewhere, e.g. `$HOME/gopkg`
- Clone ipfs into the path `$GOPATH/src/github.com/ipfs/go-ipfs`
  - NOTE: This is true even if you have forked go-ipfs, dependencies in go are path based and must be in the right locations.
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
We use [GitCop](https://gitcop.com) to check that commit messages are
properly written. It checks the following:

* The first line of a commit message, called the subject line should
  not be more than 80 characters long.

* The commit message should end with the following trailers:

  ```
  License: MIT
  Signed-off-by: User Name <email@address>
  ```

  where "User Name" is the author's real (legal) name and
  email@address is one of the author's valid email addresses.

  These trailers mean that the author agrees with the 
  [developer certificate of origin](docs/developer-certificate-of-origin)
  and with licensing the work under the [MIT license](docs/LICENSE).

  To help you automatically add these trailers, you can run the
  [setup_commit_msg_hook.sh](https://raw.githubusercontent.com/ipfs/community/master/dev/hooks/setup_commit_msg_hook.sh)
  script which will setup a Git commit-msg hook that will add the above
  trailers to all the commit messages you write.

See the [documentation about amending commits](https://github.com/ipfs/community/blob/master/docs/amending-commits.md)
for explanation about how you can rework commit messages.
  
Some example commit messages:

```
parse_test: improve tests with stdin enabled arg

Now also check that we get the right arguments from
the parsing.

License: MIT
Signed-off-by: Christian Couder <chriscool@tuxfamily.org>
```

and

```
net/p2p + secio: parallelize crypto handshake

We had a very nasty problem: handshakes were serial so incoming
dials would wait for each other to finish handshaking. this was
particularly problematic when handshakes hung-- nodes would not
recover quickly. This led to gateways not bootstrapping peers
fast enough.

The approach taken here is to do what crypto/tls does:
defer the handshake until Read/Write[0]. There are a number of
reasons why this is _the right thing to do_:
- it delays handshaking until it is known to be necessary (doing io)
- it "accepts" before the handshake, getting the handshake out of the
  critical path entirely.
- it defers to the user's parallelization of conn handling. users
  must implement this in some way already so use that, instead of
  picking constants surely to be wrong (how many handshakes to run
  in parallel?)

[0] http://golang.org/src/crypto/tls/conn.go#L886

License: MIT
Signed-off-by: Juan Benet <juan@ipfs.io>
```

## Code of Conduct

Any IPFS Go project follows the same [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md) applied to the whole IPFS ecosystem.
