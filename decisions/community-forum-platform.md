Creating a Community Forum for IPFS and Related Projects
=============

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Overview](#overview)
- [Needs](#needs)
	- [Need: A General Open Forum for Discussion](#need-a-general-open-forum-for-discussion)
	- [Need: A reliable place for Q&A and Support](#need-a-reliable-place-for-qa-and-support)
	- [Need: A Venue for people to Share Their Enthusiasm and Projects](#need-a-venue-for-people-to-share-their-enthusiasm-and-projects)
- [Factors to Consider](#factors-to-consider)
	- [Factor: Distinction between Discussion, Q&A and Proposals Toward Action/Creation/Improvement](#factor-distinction-between-discussion-qa-and-proposals-toward-actioncreationimprovement)
	- [Factor: Scaling to a Worldwide Community with Thousands of Users](#factor-scaling-to-a-worldwide-community-with-thousands-of-users)
		- [Scaling Factor: Relying heavily on the core contributors creates a bottleneck](#scaling-factor-relying-heavily-on-the-core-contributors-creates-a-bottleneck)
		- [Scaling Factor: Proliferation of Comms Channels and Resulting Notification Overload](#scaling-factor-proliferation-of-comms-channels-and-resulting-notification-overload)
		- [Scaling Factor: Multilingual Support](#scaling-factor-multilingual-support)
		- [Scaling Factor: Time Zones and Asynchronous Communication](#scaling-factor-time-zones-and-asynchronous-communication)
			- [Strengths of Synchronous Communication](#strengths-of-synchronous-communication)
			- [Weaknesses of Synchronous Communication](#weaknesses-of-synchronous-communication)
	- [Factor: Repetition is Expensive](#factor-repetition-is-expensive)
	- [Factor: Silos and Data Portability](#factor-silos-and-data-portability)
	- [Factor: User Experience](#factor-user-experience)
	- [Factor: Accessibility](#factor-accessibility)
	- [Factor: Mailing List users won't budge](#factor-mailing-list-users-wont-budge)
- [Current Situation/Solution](#current-situationsolution)
	- [Current Official and Unofficial Communication Channels](#current-official-and-unofficial-communication-channels)
	- [What's Listed in the README](#whats-listed-in-the-readme)
	- [What's Working](#whats-working)
	- [What's Not Working](#whats-not-working)
- [Proposals/Options](#proposalsoptions)
	- [Proposal: Build Our Own Decentralized Forum Software on IPFS](#proposal-build-our-own-decentralized-forum-software-on-ipfs)
		- [Strengths of building our own distributed forum solution](#strengths-of-building-our-own-distributed-forum-solution)
		- [Drawbacks of building our own distributed forum solution](#drawbacks-of-building-our-own-distributed-forum-solution)
		- [Conclusions about building a distributed forum solution](#conclusions-about-building-a-distributed-forum-solution)
	- [Proposal: Continue to Use Github for All Community Support](#proposal-continue-to-use-github-for-all-community-support)
		- [Strengths of keeping Github as community forum](#strengths-of-keeping-github-as-community-forum)
		- [Drawbacks of keeping Github as community forum](#drawbacks-of-keeping-github-as-community-forum)
		- [Conclusions about keeping Github as community forum](#conclusions-about-keeping-github-as-community-forum)
	- [Proposal: Use a StackExchange Subdomain for Q&A](#proposal-use-a-stackexchange-subdomain-for-qa)
		- [Strengths of using stackexchange](#strengths-of-using-stackexchange)
		- [Drawbacks of using stackexchange](#drawbacks-of-using-stackexchange)
		- [Conclusions about using stackexchange](#conclusions-about-using-stackexchange)
	- [Proposal: Use Discourse for All Community Support](#proposal-use-discourse-for-all-community-support)
		- [Strengths of using discourse](#strengths-of-using-discourse)
		- [Drawbacks of using discourse](#drawbacks-of-using-discourse)
		- [Conclusions about using discourse](#conclusions-about-using-discourse)
- [Decision](#decision)

<!-- /TOC -->

# Overview

In order to have a thriving, healthy community for IPFS and its related projects (Multiformats, libp2p, etc.) we need to create a Community Forum and maintain it. This document

Related Github Issues:
* Discourse - Better community building https://github.com/ipfs/community/issues/69
* Merge ipfs/ipfs, ipfs/community and ipfs/pm https://github.com/ipfs/community/issues/191

# Needs

## Need: A General Open Forum for Discussion

> [We] recognize the value and need for general forums where people can discuss and propose anything. (something like a subreddit or a general forum). Free form discussion is very valuable to communities. So I do recognize the need for something like discourse. - @jbenet https://github.com/ipfs/community/issues/69#issuecomment-158861396

## Need: A reliable place for Q&A and Support

Finish this sentence: "If you run into questions or problems using IPFS, go to ??? to connect with the IPFS community and get all of your questions answered."

## Need: A Venue for people to Share Their Enthusiasm and Projects

We're building really exciting stuff. Hundreds of people are using these protocols and libraries to build exciting tools and solutions. We're locking the web open at a time when [even the inventor of the world wide web says we have to do it](https://www.theguardian.com/technology/2017/mar/11/tim-berners-lee-web-inventor-save-internet). Every week new people jump into the stream of decentralization effort. When they see IPFS with its open protocols, its giant list of endeavors, and its sprawling community, they want to join in! They want to be part of the awesome work! Each of them brings a mix of questions, ideas, and knowledge. Some of those questions and ideas have already been discussed. Some of them are completely new. We need a way for the community to catch that enthusiasm at a global scale, providing everyone with welcoming and encouraging social experiences.

These experiences should also "onboard" people, guiding them to understand how to contribute their ideas, designs, code, etc. in ways that will have the greatest impact.

# Factors to Consider

## Factor: Distinction between Discussion, Q&A and Proposals Toward Action/Creation/Improvement

We need forums for two very different types of communication -- A) Proposals Toward Action/Creation/Improvement and B) Open Discussion and Q&A

Github issues and pull requests have worked brilliantly as a forum for Proposals Toward Action/Creation/Improvement, where someone proposes a feature, product, bug fix, documentation change, etc and people discuss the proposal to decide what action should be taken. If the action is completed, the issue gets closed. If the action isn't completed, the issue remains open.

By contrast, we still haven't found the right combination of tools & habits to support Open Discussion and Q&A, where threads of discussion can stay open permanently, with their content evolving over months without getting lost or going stale.

## Factor: Scaling to a Worldwide Community with Thousands of Users

There are a number of factors that directly impact our ability to scale to a worldwide community with thousands of users. Some of those factors are:

- [Relying heavily on the contributors creates a bottleneck](#scaling-factor-relying-heavily-on-the-core-contributors-creates-a-bottleneck)
- [Proliferation of Comms Channels and Resulting Notification Overload](#scaling-factor-proliferation-of-comms-channels-and-resulting-notification-overload)
- [Multilingual Support](#scaling-factor-multilingual-support)
- [Time Zones and Asynchronous Communication](#scaling-factor-time-zones-and-asynchronous-communication)

### Scaling Factor: Relying heavily on the core contributors creates a bottleneck

The core contributors are already maxed out with communications that are directly related to ongoing work. While we can improve their workflow and workloads to reduce this burden, we will never reach a truly global scale if we continue to route the majority of community discussions through the core contributors.

Worse, if we don't fix this bottleneck it will actually limit the number of core contributors because potential contributors will be driven away, one by one, when they give up due to frustration, lack of information, or lack of encouragement.

In order to bypass this bottleneck, we need to provide infrastructure and documentation that will allow community members to directly support and inform each other while maintaining a high signal-to-noise ratio in whichever communication forums they use. The core contributors will always have a huge role to play in this, but they can't and shouldn't be the only conduit of high-quality information.

### Scaling Factor: Proliferation of Comms Channels and Resulting Notification Overload

Spreading communication across many  channels confuses the heck out of everyone, especially new arrivals. It also makes it very hard for core contributors to participate in open community discussions on top of the existing volume of implementation-focused discussions.

@jbenet [comments](https://github.com/ipfs/community/issues/69#issuecomment-158861396):
> It is very time consuming and hard for core devs to keep up with notifications as it is, adding more communication channels will worsen this.
> - core devs want to be able to chime into discussions. keeping things in one place helps a lot with this.
> - where protocols, code, and helping users are concerned, we want to keep high SNR discussions.

### Scaling Factor: Multilingual Support

English-language communications and English-language documentation get a lot of mileage in the global technology industry, but in order to successfully build a worldwide community, you need to support multilingual community discussions and documentation.

This is especially true with decentralized technologies because

1. There are a lot of big concepts to get your head around. Understanding them in your native tongue is hard enough, let alone translating from English.
2. Forcing people to use one language runs against the principles of open protocols and distributed, peer to peer connectivity.

### Scaling Factor: Time Zones and Asynchronous Communication

A global community means people spread across all of the time zones.  Open source community means you're working with a mix of professionals (often working business hours) and non-professionals (often available _only_ during non-business hours). This creates a double-whammy of conflicts when you rely on synchronous communication like IRC conversations or public video calls.

This means that it's always best, whenever possible, to emphasize _asynchronous_ communication like github, online forums or email.

There are, however, big strengths to synchronous communication.

#### Strengths of Synchronous Communication
* allows for exchanges to feel more like a conversation
* you can make decisions much faster and much more efficiently
* it's easier to catch people's tone or intention, reducing the likelihood of confusion (which can be extremely destructive and emotionally exhausting)

#### Weaknesses of Synchronous Communication
* highly dependent on who is available at the time of the conversation
* even if you keep a log, synch communications like IRC are more ephemeral, meaning discussions that occur synchronously don't lend themselves to becoming reliable, complete reference information
* creates an advantage for the people whose lives allow them time to engage synchronously, meaning others are out of the conversation due to factors they don't have control over

## Factor: Repetition is Expensive

Answering the same questions over and over is a giant time sink and makes it very hard to maintain (or increase!) the quality of the information that people receive.

Hashing and rehashing the same debates while people repeat the same worn-out arguments again and again is exhausting.

## Factor: Silos and Data Portability

Getting stuck in a walled garden because your data have become captive in someone's closed system sucks. It runs against all of our ideals of decentralization and it limits innovation.

Note, however, that decentralization does not inherently solve this. Stable, reusable data formats are probably the biggest enabling factor for data portability. A centralized solution that lets you export data using a broadly supported format is probably better for data portability (and avoiding vendor lock-in) than a decentralized/distributed solution that uses a unique data format that nobody else supports.

## Factor: User Experience

Whichever tools we use, they must be intuitive and enjoyable for a broad range of users who have a broad range of interaction styles, reasons for engaging with the community, privacy concerns, etc.

## Factor: Accessibility

If your community forum only supports a single, normative style of user interface interaction, thus excluding people who don't/can't/won't conform to your normative assumptions, you need to seriously reconsider what kind of community you're building. Accessibility can't be an afterthought, especially in a solution that claims to be a community forum.

## Factor: Mailing List users won't budge

Some people will _only_ interact through email. Regardless of the path we take, we unavoidably need some way for people to:
* subscribe to the discussion by email
* post new threads and responses to threads by email
* post anonymously by email

Ideally these comms via email should thread into the rest of our web-based or forum-based communications.

Some solutions, like Discourse, satisfy this constraint. Other solutions, like github and stackexchange, don't satisfy this constraint which forces us to run a parallel mailing list that's just for the people who need/want email.

# Current Situation/Solution

## Current Official and Unofficial Communication Channels

We already have _many official_ communication channels:
  - [github org](github.com/ipfs) with [many, many repos](https://github.com/ipfs/ipfs/blob/master/project-directory.md), where most discussion happens
  - #ipfs IRC Channel on freenode
  - [ipfs-users](https://groups.google.com/forum/#!forum/ipfs-users) mailing list, which is very low traffic, as most people post here.

The README in the ipfs/ipfs repository directs people to seek help primarily from
  * https://github.com/ipfs/faq
  * https://github.com/ipfs/support
  * [#ipfs on chat.freenode.net](http://chat.ipfs.io)
  * [ipfs-users@groups.google.com](https://groups.google.com/forum/#!forum/ipfs-users) (low traffic)

There are also less-documented repositories related to this:
  * https://github.com/ipfs/notes
  * https://github.com/ipfs/community

There are other unofficial communication channels:
  - [r/ipfs](https://www.reddit.com/r/ipfs/) a wider community discussion forum
  - [#ipfs on Twitter](https://twitter.com/search?q=ipfs&src=typd), + [@IPFSbot](https://twitter.com/IPFSbot)

## What's Listed in the README

From the [README in ipfs/ipfs repository](https://github.com/ipfs/ipfs)

> ## Project and Community
>
> [![](https://cdn.rawgit.com/jbenet/contribute-ipfs-gif/master/img/contribute.gif)](https://github.com/ipfs/community/blob/master/contributing.md)
>
> The IPFS Project is now very large, with hundreds of contributors in our community. You are invited to join it! Here are some links to our communication channels:
>
> - [FAQs: Frequently Asked Questions](https://github.com/ipfs/faq)
> - [Support and Getting Help!](https://github.com/ipfs/support)
> - [Sprints and Project Management](https://github.com/ipfs/pm)
> - [Contributing Guidelines](https://github.com/ipfs/community/blob/master/contributing.md)
>
> You can also find our community on:
>
> - IRC: [#ipfs on chat.freenode.net](http://chat.ipfs.io) for live help and some dev discussions ([Logs](https://botbot.me/freenode/ipfs/))
> - Google Group: [ipfs-users@groups.google.com](https://groups.google.com/forum/#!forum/ipfs-users) (low traffic)
> - Twitter: [@IPFSbot](https://twitter.com/ipfsbot) for some news.

## What's Working

* The IRC channel has lots of people in it
* Many good discussions do happen on IRC
* ipfs/notes repo is consistently a host to lively technical discussion

## What's Not Working

* The uninitiated -- people who don't know how to use github and IRC are almost completely unsupported
* The ipfs/faq and ipfs/support repositories don't get much traffic, lots of questions go unanswered, and they're hard to navigate
* Many questions fall through the cracks on IRC
* Common questions get asked over and over, with very little visibility for newcomers to see the old threads
* Greeting and supporting enthusiastic people falls almost entirely to the core committers, often in private channels. It takes up a huge amount of time an energy and, even then, produces mixed results due to people's workloads/bandwidth.

# Proposals/Options

## Proposal: Build Our Own Decentralized Forum Software on IPFS

@jbenet regarding all of the centralized Options:
> it's another damn silo!! -- i'm sick and tired of information silos that hold our data hostage! Our comm data belongs on the web itself, and this is what ipfs is for! i can't wait till we have something as good as github issues so we can ditch it for the web itself! /rant. - https://github.com/ipfs/community/issues/69#issuecomment-158861396

For example, @fazo96 has built [ipfs-boards](https://github.com/fazo96/ipfs-boards), [commenting](https://github.com/ipfs/community/issues/69#issuecomment-156745591):

> I am building a Discussion Board platform on top of IPFS. I plan to open source it in the following days, I need to finish the prototype and the documentation. Maybe, when it works well enough (it needs some feature in go-ipfs 0.4 to be completed) it could be used for discussion. EDIT: here's the [link](https://github.com/fazo96/ipfs-boards) to the repo
>
> However I think a discourse server, a custom platform or any other solution that requires allocating time away from other more important matters is not a goold solution, even though the discussions are fragmented right now, they still work fine

@jbenet [responded](https://github.com/ipfs/community/issues/69#issuecomment-157125022):
> It would be really, really rad if we could get a "github issues like" post system on top of ipfs. we're really there. it would also motivate us to fix a lot of things on our end. to make life easy we can run a hosted instance that delegates ipfs ops to our nodes until the js-ipfs node is ready.

### Strengths of building our own distributed forum solution

* no servers to run (hypothetically)
* no centralized entity controls the data
* many more options for backing up the data and repurposing/reusing it

### Drawbacks of building our own distributed forum solution

* Building and/or maintaining our own complete new forum solution would be a big time sink
* Without a smart workaround, an IPFS-based solution would require everyone to be running ipfs nodes in order to contribute content. For example: https://ipfs.io/ipns/boards.ydns.eu/#/status?_k=n6r4w1
* Getting UX right is very time consuming and extremely important -- if the UX doesn't cover a broad range of the known "forum" use cases, the solution won't work for supporting a broad community

### Conclusions about building a distributed forum solution

_We are **very eager** to do this_ and really happy that @fazo96 is working on it, but it's not ready for prime-time yet, and we can't commit resources to building and maintaining it right now.

## Proposal: Continue to Use Github for All Community Support

### Strengths of keeping Github as community forum

> github issues is the best communications tool we have (allowing identity, hypermedia linking/embedding, subscribing, notifications, listing, tags, etc) - https://github.com/ipfs/community/issues/69#issuecomment-158857038

* https://github.com/ipfs/notes works quite well as a place for people to post ideas and discuss/refine them
* core contributors already use github all day, every day, and they have adapted personal approaches to managing github notifications
* It's a one-stop shop "put/find it on github" (though everything is actually spread across many github repositories)

### Drawbacks of keeping Github as community forum

Specific criticisms of the ipfs org's github-based community resources:
* our proliferation of github repositories confuses many people, especially newcomers but also people who use github all the time
* finding information on github, or even figuring out _where_ to post a question or idea, is hard to learn and time-consuming even when you know what you're doing
* despite being listed in multiple web pages and READMEs and having 2 years to become established, none of these "community support" repositories get much traffic, nor do they get much support from maintainers

General criticisms of using Github as the primary location for community support, discussion and Q&A
* github is intimidating for newcomers
* "not my house" - compared to a discussion forum, non-committers are less likely to answer questions in github. There's a general cultural habit of seeing github issues as "the maintainers' responsibility"
* github is designed for proposing actions and reaching conclusions, not for Q&A or open discussion. The UX and data model are optimized for proposing, tracking, and completing discrete tasks that have "done" state, at which point you close the issue. This makes it bad for Q&A type discussions, where questions and answers should stick around for people to use as a knowledge base in the future.

### Conclusions about keeping Github as community forum

* a lot of people are falling through the cracks and a lot of enthusiasm is being met by lackluster response rather than shared enthusiasm
* We may have reached the point where the community needs its own venue for discussion beyond github


## Proposal: Use a StackExchange Subdomain for Q&A

### Strengths of using stackexchange

* does a very good job of making the best answers float to the top
* does a very good job of incentivising community members to provide answers and to keep the quality of answers high

### Drawbacks of using stackexchange

* strictly limits to questions that can be answered -- explicitly discourages open-ended discussions

### Conclusions about using stackexchange

* Great tool for Q&A knowledge base but explicitly NOT for building community & connections
* If we used it, we would have to maintain some _other_ forum for open-ended community discussions.

## Proposal: Use Discourse for All Community Support

Related Github Issues:
* **original discussion** Discourse - Better community building https://github.com/ipfs/community/issues/69
* Discourse: Evaluation Checklist https://github.com/ipfs/community/issues/213
* `*.ipfs.io` domain for discourse https://github.com/ipfs/ops-requests/issues/33
* Try out discourse.org for Community Forums  https://github.com/ipfs/community/issues/190
* Merge ipfs/ipfs, ipfs/community and ipfs/pm https://github.com/ipfs/community/issues/191

### Strengths of using discourse
* Would be a one-stop landing place for anyone who needs to get answers, find help, share their excitement, tell other people about their projects, etc.
* Doubles as a mailing list, which would allow us to decommission the very-low-traffic, oft-forgotten google group
* Very good search -- easy for people to find existing discussions and answers to questions
* Allows us to consolidate ipfs/faq, ipfs/support and parts of ipfs/ipfs repositories into one platform (REDUCTO!✨)
* notifications can be configured to suit wide variety of preferences
* You can curate threads to emphasize things like important topics, common questions, especially good answers, etc.
* Provides ways to give community members a range of powers and responsibilities
* Could _decrease_ the number of notifivations that core devs receive because, as described by @lidel [here](https://github.com/ipfs/community/pull/246#discussion_r105844087), it allows you to receive notifications for the first item in each new thread and then choose to opt in rather than (github-style) defaulting to sending all messages from all threads 

### Drawbacks of using discourse

@jbenet's [personal opinion on discourse itself](https://github.com/ipfs/community/issues/69#issuecomment-158861396):
> - every discourse site i've participated in promotes "the act of posting messages" over "the act of communicating ideas", so in my experience the tends to devolve into _very low_ [SNR](https://en.wikipedia.org/wiki/Signal-to-noise_ratio).
> - to me, the UI/UX feels very hostile. _i personally_ won't use it. feel free to have one, but i won't be there.
> - discourse is yet-another centralized comm platform. i would like to have something distributed
> - it's another damn silo!! -- i'm sick and tired of information silos that hold our data hostage! Our comm data belongs on the web itself, and this is what ipfs is for! _i can't wait_ till we have something _as good as github issues_ so we can ditch it for the web itself! /rant.

General points:
* would require a lot more management of community discussions in order to maintain a good [SNR](https://en.wikipedia.org/wiki/Signal-to-noise_ratio). Hopefully a lot of that effort can come from community members
* would require attention to keep "community discussion" on discourse from drifting away from task-oriented, github-based discussion about implementation, maintenance and design
* would be a protocol change for core contributors
* would add to the already-crushing volume of notifications
* Some people, especially @jbenet really dislike the UX and won't use it much

### Conclusions about using discourse

Discourse is only worth it if we successfully empower community members, _beyond core contributors_, to moderate discussions, to maintain a high quality of information/answers, and to maintain a good [SNR](https://en.wikipedia.org/wiki/Signal-to-noise_ratio).

* Maybe a segment of core contributors can be on Discourse while others stick primarily to github, and maybe that's ok.
* Some people really dislike the UX of discourse and won't use it much.

If we proceed, there's a list of things we will have to do. See https://github.com/ipfs/docs/issues/7 and related issues.

# Decision

**We will finalize the decision on Wednesday 22 March 2017.** The current proposal is to switch to using Discourse for all community support. Please express your position at https://www.loomio.org/d/imMrpwRF _(We are testing loomio as a way to make community decisions like this one.)_

When the proposal concludes in loomio, we will update this document with the results.
