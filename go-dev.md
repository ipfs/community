# devtools

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/project-IPFS-blue.svg?style=flat-square)](http://ipfs.io/)
[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Tools for development of IPFS, IPLD, libp2p, and multiformats

This is a collection of tools and practices which help the IPFS community develop and maintain IPFS.
It's generally a work in progress, as we continuously refine how we work on the IPFS code.

If you're interested in working on any task marked *TODO*, please inquire
on the [issue tracker](https://github.com/ipfs/devtools/issues) or in #ipfs on freenode IRC.

- General
  - [Licensing and commit signoff](#licensing-and-commit-signoff)
  - [Readmes](#readmes)
  - [Repo permissions](#repo-permissions)
- Repository skeletons
  - TODO
- go-ipfs
  - [gx](#gx) -- an immutable package manager based on IPFS itself.
  - [myrepos](#myrepos) -- helps to keep checkouts of our myriad of repositories up-to-date.
  - [hub](#hub) -- creates Github Pull Requests from the command line.
- js-ipfs
  - TODO
- community
  - TODO
- infrastructure
  - TODO

## Licensing and commit signoff

All code is [licensed as MIT](https://opensource.org/licenses/MIT),
and documentation-heavy repositories are usually licensed as [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

We require every commit to carry licensing and author information in the commit message:

```sh
> git show
commit ce96b915e75392baaa866b6f23e58f42f862f9d6
Author: Jakub Sztandera <kubuxu@protonmail.ch>
Date:   Tue Oct 4 18:25:23 2016 +0200

    gateway: change status code of failed namesys resution to 500

    License: MIT
    Signed-off-by: Jakub Sztandera <kubuxu@protonmail.ch>
```

There's a [git commit hook](https://github.com/ipfs/devtools/blob/master/licensing/setup_commit_msg_hook.sh)
which automatically adds License and Signed-off-by to commit messages,
and which you should copy into `.git/hooks/` in every repo.

So far we only enforce this requirement on a few repositories like go-ipfs, by means of [GitCop](https://gitcop.com).
We do want to instead have a CI job for this task and then enforce it on every repo.

- [ ] TODO: Automate setup of commit message hook.
- [ ] TODO: CI job for commit message enforcement (instead of GitCop).

## Readmes

We aim for each repository's README file to be [standard-readme compliant](https://github.com/richardlitt/standard-readme)
and to provide at least:

- An invitation to contribute, and instructions for doing so.
- Licensing information (we mainly use MIT and Creative Commons licenses.)
- Badge images for project, chat, and CI.

## Repo permissions

Each of the ipfs, ipld, libp2p, multiformats, and gxed Github organizations has a team called "Admin",
and every repository must have the Admin team added to itself, with *admin* permissions.

Whenever you create a new repository, make sure to add the Admin team, with *admin* permissions,
as well as the respective language team, e.g. "go-ipfs team" or "js-ipfs team".

This team setup makes sure that:
1. relevant contributors can work with you right from the start.
2. you don't need to involve yourself with per-user permissions, which is brittle and error-prone.

- [ ] TODO: Automate repo and teams setup.

## gx

We aim for all of our projects written in go to make use of [gx, the immutable package manager](https://github.com/) based on IPFS.

- [ ] TODO: Explain how libraries use gx vs. how programs use gx.
- [ ] TODO: Explain how to propagate package updates through a tree of dependencies.
- [ ] TODO: Explain common problems.

## myrepos

The `mkmrconfig.sh` script generates a `.mrconfig` project config file for use with [myrepos](https://myrepos.branchable.com).
It scans the *ipfs*, *ipld*, *libp2p*, *multiformats*, and *gxed* organizations on Github,
and adds all `go-` repositories and a few other relevant repositories (like e.g. ipfs/specs)
to your myrepos project config.

Should you receive authentication or rate limiting errors from Github's API,
try getting an OAuth Token and set the `auth` variable in `mkmrconfig.sh`.

Once you have this project config, you can use the `mr` command to operate on all repos at the same time.
As go's import mechanism requires each package to live at an exact place within `$GOPATH`, we'll put the config file there.

```sh
# init, also this is how to update when new repos are created
> cd $GOPATH/src/github.com/
> git clone git@github.com:ipfs/devtools.git ipfs/devtools/
> ipfs/devtools/mkmrconfig.sh > .mrconfig
> mr checkout
> mr status

# see repos with changes
> mr -m st

# update everything
> mr -j 5 run git pull
> mr run gx install --global

# setup the sign-off hook
> mr run cp `pwd`/ipfs/devtools/licensing/setup_commit_msg_hook.sh .git/hooks/
```

Note that `mr` commands can be abbreviated to any unambiguous substring, so "mr st" is equivalent to "mr status".
See `man mr` for more information about the available commands and options.

Also note that while mr's ability to work with multiple repositories is great,
some of it's built-in commands are subar and the native git commands are usually a better option.
For example, `mr run git --no-pager diff` is superior to `mr diff`.

- [ ] TODO: Explain contextual grouping of repos, i.e. working only on repos which have a certain branch.

## hub

[hub](https://github.com/github/hub) is nice in that it allows you to do certain Github-related actions from the command line.

```sh
# push something spanning a lot of repos
> mr run git commit -m "beep boop"
> mr run git push origin
> mr run hub pull-request -m "Here's my PR"
```

- [ ] TODO: Explain contextual grouping of repos, i.e. working only on repos which have a certain branch.
- [ ] TODO: Show how to automatically open pull requests on a certain bunch of repos.

## Contributing

Feel free to join in. All welcome. Look for tasks marked TODO.
Open an [issue](https://github.com/ipfs/devtools/issues)!

This repository falls under the IPFS [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md).

### Want to hack on IPFS?

[![](https://cdn.rawgit.com/jbenet/contribute-ipfs-gif/master/img/contribute.gif)](https://github.com/ipfs/community/blob/master/contributing.md)

## License

MIT
