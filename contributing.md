# Contributing
[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/project-IPFS-blue.svg?style=flat-square)](http://ipfs.io/)
[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)
![](https://github.com/jbenet/contribute-ipfs-gif/raw/master/img/contribute.gif)

[IPFS Main Repo](https://github.com/ipfs/ipfs#ipfs---the-permanent-web) • [IPFS Project Directory](https://github.com/ipfs/ipfs#project-directory)

Want to hack on IPFS? Awesome! Here are instructions to get you started.
They are not perfect yet. Please let us know what feels wrong or incomplete.

IPFS is an Open Source project and we welcome contributions of all sorts.
There are many ways to help, from reporting issues, contributing code, and
helping us improve our community.

### Topics

- [Security Issues](#security-issues)
- [Community Guidelines](#community-guidelines)
- [Dive Right In](#dive-right-in)
- [Reporting Issues](#reporting-issues)
- [Protocol Design](#protocol-design)
- [Implementation Design](#implementation-design)
- [Contribution Guidelines](#contribution-guidelines)
- [Community Improvement](#community-improvement)
- [Translations](#translations)
- [Helping in other ways](#helping-in-other-ways)

### Security Issues

The IPFS protocol and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. And -- though IPFS is not production-ready yet -- many people are already running nodes in their machines. So we take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments -- for example, expose a remote execution exploit -- please send your report privately to security@ipfs.io, please DO NOT file a public issue. The GPG key for security@ipfs.io is [4B9665FB 92636D17 7C7A86D3 50AAE8A9 59B13AF3](https://pgp.mit.edu/pks/lookup?op=get&search=0x50AAE8A959B13AF3).

If the issue is a protocol weakness or something not yet deployed, just discuss it openly.

### Community Guidelines

We want to keep the IPFS community awesome, growing and collaborative. We need your help to keep it that way. To help with this we've come up with some general guidelines for the community as a whole:

- Be nice: Be courteous, respectful and polite to fellow community members: no regional, racial, gender, or other abuse will be tolerated. We like nice people way better than mean ones!

- Encourage diversity and participation: Make everyone in our community feel welcome, regardless of their background and the extent of their contributions, and do everything possible to encourage participation in our community.

- Keep it legal: Basically, don't get anybody in trouble. Share only content that you own, do not share private or sensitive information, and don't break laws.

- Stay on topic: Make sure that you are posting to the correct channel and avoid off-topic discussions. Remember when you update an issue or respond to an email you are potentially sending to a large number of people. Please consider this before you update. Also remember that nobody likes spam.

There is also a more extensive [code-of-conduct](code-of-conduct.md).

### Dive Right In

If you're curious to hack on IPFS right now and you just need an issue to focus on, check out [this search](https://github.com/search?utf8=%E2%9C%93&q=label%3A%22difficulty%3Aeasy%22+label%3A%22help+wanted%22+user%3AIPFS+is%3Aopen+&type=Issues) for issues tagged as "help wanted". Generally, these should be easier for newcomers, and are great places to start hacking away. Have fun!

### Reporting Issues

If you find bugs, mistakes, inconsistencies in the IPFS project's code or
documents, please let us know by filing an issue at the appropriate issue
tracker (we use multiple repositories). No issue is too small.

The main issues for bug reporting are as follows:
- [go-ipfs/issues](https://github.com/ipfs/go-ipfs/issues) - Issues related to running the Go implementation of IPFS.
- [js-ipfs/issues](https://github.com/ipfs/js-ipfs/issues) - Issues related to running the js implementation of IPFS.
- [support/issues](https://github.com/ipfs/support/issues) - If you're not sure but you need support on running IPFS.
- [notes/issues](https://github.com/ipfs/notes/issues) - For general notes and ideas.
- [faq/issues](https://github.com/ipfs/faq/issues) - For questions.
- [specs/issues](https://github.com/ipfs/specs/issues) - For protocol discussions.

The [go-ipfs](https://github.com/ipfs/go-ipfs) issues use a template that will guide you through the process of reporting a bug. We will be adding this kind of issue template to other repositories as bug reports become more common.

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

### Community Improvement

The IPFS community requires maintenance of various "public infrastructure" resources. These include documentation, github repositories, CI build bots, and more. There is also helping new users with questions, spreading theword about IPFS, and so on. Soon, we will be planning and running conferences. Please get in touch if you would like to help out.

### Translations

This community moves very fast, and documentation swiftly gets out of date. For now, we are encouraging would-be translates to hold off from translating large repositories. For some repositories, this is OK  - for instance, on the [webui](https://github.com/ipfs/webui). If you would like to add a translation, please open an issue and ask the leads for a given repository before filing a PR, so that we do not waste efforts.

If anyone has any issues understanding the English documentation, please let us know! If you would like to do so privately, please email @RichardLitt. We are very sensitive to language issues, and do not want to turn anyone away from hacking because of their language.

### Helping in other ways

Protocol Labs occasionally is able to hire developers for part time or full time positions, to work on IPFS. If you are interested, check out [the job listings](http://ipn.io/join/#pm). If you'd like to help in other ways, [email @jbenet directly](mailto:juan@ipfs.io?subject=Contributing to IPFS).
