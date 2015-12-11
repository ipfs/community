# Contributing
[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/project-IPFS-blue.svg?style=flat-square)](http://ipfs.io/)
[![](https://img.shields.io/badge/freejs-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)  
![](https://github.com/jbenet/contribute-ipfs-gif/raw/master/img/contribute.gif)

[IPFS Main Repo](https://github.com/ipfs/ipfs#ipfs---the-permanent-web) • [IPFS Project Directory](https://github.com/ipfs/ipfs#project-directory)  

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
