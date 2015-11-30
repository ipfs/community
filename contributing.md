# Contributing

Want to hack on IPFS? Awesome! Here are instructions to get you started.
They are not perfect yet. Please let us know what feels wrong or incomplete.

IPFS is an Open Source project and we welcome contributions of all sorts.
There are many ways to help, from reporting issues, contributing code, and
helping us improve our community.

### Topics

* [Security Issues](#reporting-security-issues)
* [Reporting Issues](#reporting-issues)
* [Protocol Design](#protocol-design)
* [Implementation Design](#implementation-design)
* [Contribution Guidelines](#contribution-guidelines)
* [Community Guidelines](#community-guidelines)
* [Community Improvement](#community-improvement)
* [Developer Sitemap](#developer-sitemap)
* [Developer Tools](#developer-tools)

### Security Issues

The IPFS protocol and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. And -- though IPFS is not production-ready yet -- many people are already running nodes in their machines. So we take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments -- for example, expose a remote execution exploit -- please send your report privately to juan@ipfs.io, please DO NOT file a public issue.

If the issue is a protocol weakness or something not yet deployed, just discuss it openly.

### Reporting Issues

If you find bugs, mistakes, inconsistencies in the IPFS project's code or
documents, please let us know by filing an issue at the appropriate issue
tracker (we use multiple repositories). No issue is too small.

When reporting issues about an implementation, please include your host OS (Ubuntu 12.04, Fedora 19, etc). Please run:

```
echo "IPFS Bug Report" >/tmp/ipfs-bug-report
date >>/tmp/ipfs-bug-report
ipfs version >>/tmp/ipfs-bug-report
uname -a >>/tmp/ipfs-bug-report
```

It may also be relevant to look at the eventlog of your ipfs node, but we will request it if so.


### Protocol Design

When considering protocol design proposals, we are looking for:

- A description of the problem this design proposal solves
- Discussion of the tradeoffs involved
- Review of other existing solutions
- Links to relevant literature (RFCs, papers, etc)
- Discussion of the proposed solution

Please note that protocol design is hard, and meticulous work. You may need to review existing literature and think through generalized use cases.

### Implementation Design

When considering design proposals for implementations, we are looking for:

- A description of the problem this design proposal solves
- Discussion of the tradeoffs involved
- Discussion of the proposed solution


### Contribution Guidelines

Please see [contribution-guidelines.md](contribution-guidelines.md).

### Community Guidelines

We want to keep the IPFS community awesome, growing and collaborative. We need your help to keep it that way. To help with this we've come up with some general guidelines for the community as a whole:

- Be nice: Be courteous, respectful and polite to fellow community members: no regional, racial, gender, or other abuse will be tolerated. We like nice people way better than mean ones!

- Encourage diversity and participation: Make everyone in our community feel welcome, regardless of their background and the extent of their contributions, and do everything possible to encourage participation in our community.

- Keep it legal: Basically, don't get anybody in trouble. Share only content that you own, do not share private or sensitive information, and don't break laws.

- Stay on topic: Make sure that you are posting to the correct channel and avoid off-topic discussions. Remember when you update an issue or respond to an email you are potentially sending to a large number of people. Please consider this before you update. Also remember that nobody likes spam.

There is also a more extensive [code-of-conduct](code-of-conduct.md).

### Community Improvement

The IPFS community requires maintenance of various "public infrastructure" resources. These include documentation, github repositories, CI build bots, and more. There is also helping new users with questions, spreading theword about IPFS, and so on. Soon, we will be planning and running conferences. Please get in touch if you would like to help out.

### Developer Sitemap

* [archives](https://github.com/ipfs/archives)
    Repo to coordinate archival efforts with IPFS.

* [notes](https://github.com/ipfs/notes)
    Various relevant notes and discussions (that do not fit elsewhere).

* [awesome-ipfs](https://github.com/ipfs/awesome-ipfs)
    Useful resources for using IPFS and building things on top of it.

* [blog](https://github.com/ipfs/blog)
    IPFS Blog.

* [community](https://github.com/ipfs/community)
    General discussion and documentation on community practices.

* [infrastructure](https://github.com/ipfs/infrastructure)
    Tools and systems for the community.

* [ipfs-readme-standard](https://github.com/ipfs/ipfs-readme-standard)
    Standardize all IPFS Readme.md's and other markdown files

* [logo](https://github.com/ipfs/logo)
    The logo for IPFS.

* [meetup-lisbon](https://github.com/ipfs/meetup-lisbon)
    The IPFS meetup in Lisbon.

* [pm](https://github.com/ipfs/pm)
    General project management.

* [support](https://github.com/ipfs/support)
    For questions on how to get IPFS up and running smoothly.

* [website](https://github.com/ipfs/website)
    The source to the IPFS community website at http://ipfs.io.

### Developer Tools

* [api](https://github.com/ipfs/api)
    The APIs IPFS implementations must conform to, with planned test suites to check conformity.

* [dataviz](https://github.com/ipfs/dataviz)
    IPFS data visualizations.

* [dir-index-html](https://github.com/ipfs/dir-index-html)
    Directory listing html.

* [distributions](https://github.com/ipfs/distributions)
    Script to build the /install html page.

* [ci-status](https:?/github.com/ipfs/ci-status)
    ci status for the ipfs project

* [dnslink-deploy](https://github.com/ipfs/dnslink-deploy)
    Automatically set DNS records on Digital Ocean.

* [file-browser](https://github.com/ipfs/file-browser)
    generic-ipfs-file-browser-ui-thing

* [fs-repo-migrations](https://github.com/ipfs/fs-repo-migrations)
    These are migrations for the filesystem repository of IPFS clients.

* [fs-stress-test](https://github.com/ipfs/fs-stress-test)
    This repo will stress test IPFS filesystem capabilities.

* [go-blocks](https://github.com/ipfs/go-blocks)
    Go-blocks - IPFS blocks.

* [go-commands](https://github.com/ipfs/go-commands)
    Go commands. WIP.

* [go-ipfs-util](https://github.com/ipfs/go-ipfs-util)
    Common utilities used by go-ipfs and other related go packages

* [go-iprs](https://github.com/ipfs/go-iprs)
    Go-ipfs records.

* [go-libp2p](https://github.com/ipfs/go-libp2p)
    libp2p is a networking stack and library modularized out of The IPFS Project, and bundled separately for other tools to use.

* [go-log](https://github.com/ipfs/go-log)
    A logging library used by go-ipfs.

* [install-go-ipfs](https://github.com/ipfs/install-go-ipfs)
    Install go-ipfs shell script.

* [ipfs-geoip](https://github.com/ipfs/ipfs-geoip)
    Geoip over ipfs

* [ipfs-js-defaults](https://github.com/ipfs/ipfs-js-defaults)
    Sane defaults for IPFS node configurations.

* [ipfs-update](https://github.com/ipfs/ipfs-update)
    An updater tool for ipfs

* [js-ipfsd-ctl](https://github.com/ipfs/js-ipfsd-ctl)
    Control an IPFS daemon (WIP).

* [js-ipfs-path](https://github.com/ipfs/js-ipfs-path)
    Javascript helper functions for IPFS path handling

* [npm-go-ipfs](https://github.com/ipfs/npm-go-ipfs)
    Install go-ipfs from npm.


* [ipfs.js](https://github.com/ipfs/ipfs.js)
    A squatted repo, for future client side IPFS js.

* [ipfs-blob-store](https://github.com/ipfs/ipfs-blob-store)
    A place to buy blobs.

* [ipfs-hubot](https://github.com/ipfs/ipfs-hubot)
    hubot for IPFS (WIP!!).

* [ipfs-npm](https://github.com/ipfs/ipfs-npm)
    npm on IPFS

* [refs](https://github.com/ipfs/refs)
    DMCA notices, and tools for publishing them https://ipfs.io/refs/lists/denylists/dmca

* [refs-denylists-dmca](https://github.com/ipfs/refs-denylists-dmca)
    DMCA takedown notices

* [refs-solarnet-storage](https://github.com/ipfs/refs-solarnet-storage)
    Inventory of content archived on Solarnet storage hosts https://github.com/ipfs/archives
