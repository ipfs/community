# Contribution Guidelines

## Discuss big changes as Issues first

Significant improvements should be documented as GitHub issues before anybody starts to code. This gives other contributors a chance to point you in the right direction, give feedback on the design, and maybe point out if related work is under way.

Please take a moment to check whether an issue already exists. If it does, it never hurts to add a quick "+1" or "I have this problem too". This helps prioritize the most common problems and requests.

## Pull Requests always welcome

We are always thrilled to receive pull requests, and do our best to process them as quickly as possible. Not sure if that typo is worth a pull request? Do it! We will appreciate it.

We're also trying very hard to keep IPFS focused. This means that we might decide against incorporating a new feature. However, there might be a way to implement that feature on top of (or below) IPFS.

If your pull request is not accepted on the first try, don't be discouraged! If there's a problem with the implementation, hopefully you received feedback on what to improve.

## Conventions

Each repository will have its own code and test conventions. Please make sure to review those before jumping in. Some general conventions are listed below.

### Git

We use a simple git branching model:

- `master` must always work
- create feature-branches to merge into `master`

Just stay current with master (rebase).

### Commit messages

Commit messages must start with a capitalized and short summary (max. 50 chars), followed by an optional, more detailed explanatory text which is separated from the summary by an empty line. For example:

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
defer the handshake until Read/Write[1]. There are a number of
reasons why this is _the right thing to do_:
- it delays handshaking until it is known to be necessary (doing io)
- it "accepts" before the handshake, getting the handshake out of the
  critical path entirely.
- it defers to the user's parallelization of conn handling. users
  must implement this in some way already so use that, instead of
  picking constants surely to be wrong (how many handshakes to run
  in parallel?)

[0] http://golang.org/src/crypto/tls/conn.go#L886
```


### Code

Write clean code. Universally formatted code promotes ease of writing, reading, and maintenance.

### Tests

Submit tests with your changes. Take a look at existing tests for inspiration. Run the full test suite on your branch before submitting a pull request.

For commandline tool changes, please write appropriate sharness tests.

### Documentation

Update documentation when creating or modifying features. Test your documentation changes for clarity, concision, and correctness, as well as a clean documentation build.

### Pull Requests

Pull requests descriptions should be as clear as possible. Err on the side of overly specific and include a reference to all related issues. If the pull request is meant to close an issue please use the Github keyword conventions of [closes, fixes, or resolves]( https://help.github.com/articles/closing-issues-via-commit-messages/). If the pull request only completes part of an issue use the [connects keywords]( https://github.com/waffleio/waffle.io/wiki/FAQs#prs-connect-keywords). This helps our tools properly link issues to pull requests. 

### Code Review

We take code quality seriously; we must make sure the code remains correct. We do code review on all changesets. Discuss any comments, then make modifications and push additional commits to your feature branch. Be sure to post a comment after pushing. The new commits will show up in the pull request automatically, but the reviewers will not be notified unless you comment.

We use `LFCR` (Looking For Code Review) as a signal that something needs review. For example:

```
I addressed the comments. The gateway now returns cache headers.
@jbenet LFCR
```

### Rebasing

Pull requests **must be cleanly rebased ontop of master** without multiple branches mixed into the PR. If master advances while your PR is in review, please keep rebasing it. It makes all our work much less error-prone.

Before the pull request is merged, make sure that you squash your commits into logical units of work using `git rebase -i` and `git push -f`. After _every commit_ the test suite must be passing. This is so we can revert pieces, and so we can quickly bisect problems. Include documentation changes and tests in the same commit so that a revert would remove all traces of the feature or fix.

### Merge Approval

We use LGTM (Looks Good To Me) in comments on the code review to indicate acceptance. A change **requires** LGTMs from the maintainers of each component affected. If you know who it may be, ping them. If not, ping `@jbenet`. (We will be adding a listing here.)


## Sign and License your work

The sign-off is a simple line at the end of the explanation for the patch, which certifies that you wrote it or otherwise have the right to pass it on as an open-source patch. The rules are pretty simple: if you can certify the below (from [developercertificate.org](http://developercertificate.org)):

```
Developer Certificate of Origin
Version 1.1

Copyright (C) 2004, 2006 The Linux Foundation and its contributors.
660 York Street, Suite 102,
San Francisco, CA 94110 USA

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```

Then you just add a line to every git commit message:

```
License: MIT
Signed-off-by: Joe Smith <joe.smith@email.com>
```

Using your legal name.

We have a handy [git commit hook](dev/tools/hooks/commit-msg) that does this
for you on every commit.

## Credits

This document is based on [Contributing to Docker](https://github.com/docker/docker/blob/master/CONTRIBUTING.md), the [Docker](https://github.com/docker/docker) contribution guidelines.
