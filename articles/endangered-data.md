<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Instructions for Saving Endangered Data: It's time to get decentralized.](#instructions-for-saving-endangered-data-its-time-to-get-decentralized)
	- [The Situation: Endangered Data Woven into a Precarious Web](#the-situation-endangered-data-woven-into-a-precarious-web)
	- [The Problem: Identifying Content by its Location](#the-problem-identifying-content-by-its-location)
	- [The Solution: Identify Information by its Fingerprint, not its Location](#the-solution-identify-information-by-its-fingerprint-not-its-location)
	- [How to Do It: Write Content onto IPFS and Publish the Hashes](#how-to-do-it-write-content-onto-ipfs-and-publish-the-hashes)
		- [Writing Content onto IPFS](#writing-content-onto-ipfs)
		- [Pinning Data to Save It](#pinning-data-to-save-it)
		- [Publishing the Hashes](#publishing-the-hashes)
		- [Do I have to worry about Bad Content coming onto my machine?](#do-i-have-to-worry-about-bad-content-coming-onto-my-machine)
	- [Covering Your Bases: Strategies for Making your Content Resilient](#covering-your-bases-strategies-for-making-your-content-resilient)
		- [Talk to a Librarian](#talk-to-a-librarian)
		- [Achieving Redundancy](#achieving-redundancy)
		- [Ensuring Availability](#ensuring-availability)
		- [Ensuring Authenticity](#ensuring-authenticity)
		- [Dealing with Versioning](#dealing-with-versioning)
		- [Preserving Data](#preserving-data)
- [Why the Established Tools Aren't Good Enough](#why-the-established-tools-arent-good-enough)
	- [What's wrong with just moving the data to a new, trusted location?](#whats-wrong-with-just-moving-the-data-to-a-new-trusted-location)
	- [Why isn't it enough to have everyone download copies of the data?](#why-isnt-it-enough-to-have-everyone-download-copies-of-the-data)
	- [Can't we use the cloud to back up the data?](#cant-we-use-the-cloud-to-back-up-the-data)
	- [Can Libraries Save the Day?](#can-libraries-save-the-day)
- [Become a Steward of Your Data](#become-a-steward-of-your-data)

<!-- /TOC -->

# Instructions for Saving Endangered Data: It's time to get decentralized.

## The Situation: Endangered Data Woven into a Precarious Web

**[precarious](http://www.thefreedictionary.com/precarious)**
adj. Dangerously lacking in security or stability: _a precarious posture; precarious footing on the ladder._
adj. Subject to chance or unknown conditions.

The World Wide Web is precarious. It's a network of information, discussions, data, and analysis that relies on HTTP links to maintain connections between the pieces. Those links are unreliable because the content they point to is unstable. If you rely on an HTTP service as an authoritative source of data you're building on a precarious foundation. Next time you feel the pain of this precarious situation, I encourage you to take it as a sign that you should embrace the decentralized web.

Centralization is a disease that the web is suffering from. It makes the web unstable, insecure and vulnerable to exploitation.  **We can address that disease by changing the way we link to information.**

For example, right now Climate scientists are [rushing to back up climate datasets](https://motherboard.vice.com/read/researchers-are-preparing-for-trump-to-delete-government-science-from-the-web). For decades they have relied on the US government to host a huge amount of the climate data that they rely on. The data have been centralized on a few servers and those servers have been treated as the "authoritative" locations for the data. Now researchers are worried that it's not safe to rely on those servers any more. This has triggered a massive effort of [#DataRescue](http://www.ppehlab.org/datarefuge) and [Guerilla Archiving](https://technoscienceunit.wordpress.com/2016/12/04/guerrilla-archiving-event-saving-environmental-data-from-trump/).

A similar same thing happened when GeoCities shut down. It also happens when people grab snapshots of controversial tweets and high-profile Facebook conversations before they get deleted. These are all examples of people responding to the instability and unreliability of the web. Today's worldwide web is not a resilient system.

From a technical perspective, the problem is the centralization of the data. Any data we rely on should be held redundantly in many places. Governments, researchers, libraries, etc should all holding identical copies of whichever datasets they care about. This is possible today but we simply aren't doing it. In order to make this system more resilient, we need to **stop relying on location to distinguish between data** and instead use a technique called content-addressing to distinguish "authoritative" data from other data.

You can make this switch today. Technologies and protocols like [IPFS](https://ipfs.io) and [BitTorrent](http://www.bittorrent.com/) and [Dat](https://dat-data.com) let you distribute identical copies of your data across a dynamic, scalable network of peers. These decentralized web technologies will smooth the process of saving endangered data now and they will prevent this problem from happening again in the future.

On a note that's particularly relevant to the topic of saving endangered data, the Internet Archive have been encouraging the use of decentralized technologies for some time. They even hosted the [Decentralized Web Summit](https://www.decentralizedweb.net) in June 2016.

This document provides an overview of the concepts you need to understand in order to use the decentralized web, plus an overview of the strategies involved in using the decentralized web to rescue endangered data.

## The Problem: Identifying Content by its Location

When you use an `http://` or `https://` link to point to a webpage, image, spreadsheet, dataset, tweet, etc, you're identifying content by its location.  The link is an identifier that points to a particular location on the web, which corresponds to a particular server, or set of servers, somewhere on the web.  **Whoever controls that location controls the content.** That's how HTTP works. It's _location-addressed_. Even if a thousand people have downloaded copies of a file, meaning that the content exists in a thousand locations, HTTP points to a single location. This location-addressed approach forces us all to pretend that the data are in only one location. Whoever controls that location decides what content to return when people use that link. They also decide whether to return any content at all.

To get a sense of how impractical it is to address content by its location, imagine if I used location-addressing to recommend the book [Why Information Grows](http://www.goodreads.com/book/show/20763722-why-information-grows).

If I identify the book by its content, saying "Check out the book called _Why Information Grows_ by César Hidalgo. The ISBN is 0465048994.", you will be able to get any copy of the book from any source and know that you're reading the information I recommended. You might even say "Oh. I already read it." or "My roommate has it in the other room. I'll borrow it from him.", saving yourself the cost or effort of getting another copy.

By contrast, if I used location-addressing to identify the book, I would have to point to a location, saying something like "Go to the news stand at Market & 15th in Philadelphia and ask for the thing 16 inches from the south end of the third shelf on the east wall" Those instructions are confusing and awkward, but that's how http links work. They identify content by its location and they rely on the 'host' at that location to provide the content to visitors. There are lots of things that could go wrong with this approach. It also puts a lot of power and responsibility on the shoulders of whoever controls the location you're pointing to - in this case the news stand.

Let's consider the responsibilities of whoever controls the location we've pointed to. If the people running the news stand want my directions (aka. my "link") to remain valid, allowing people to access the book, they have to:

* Always be open, 24/7, in case someone wants to read the book.
* Provide the book to _everyone_ who seeks the book, whether it's one person or hundreds of thousands of people.
* Protect the integrity of the book by preventing anyone from tampering with it.
* Never remove the book from its shelf - if they get rid of it, or even move it, my link is broken and nobody will be able to use my instructions to find the book.

Along with those responsibilities come a great amount of power. The proprietors of the news stand control the location that my directions point to, so they can choose to:

* Dictate who is allowed to see the book.
* Move the book without telling anyone.
* Destroy the book.
* Charge people money to access the book or force them to watch ads when they walk in the door.
* Collect data about everyone who accesses my book, using that information however they want.
* Replace the book with something else -- They might not even put a book there, since my instructions are just describing a location, a malicious actor could replace the book with something dangerous, turning the location into a trap!

Location-addressing has worked on the web for 25 years, but it's starting to get painful and It's about to get much worse. As long as we continue to rely on it, the web will continue to be unstable, insecure, and prone to manipulation or exploitation.

## The Solution: Identify Information by its Fingerprint, not its Location

The alternative is to identify content by its "fingerprint" rather than identifying it by its location. That way, when someone says "Look at the content with this fingerprint" you can get it from anyone who has a copy of the content. To do this, we identify content by its cryptographic hash. A cryptographic hash is a short string of letters and numbers that's calculated by feeding your content into a _cryptographic hash function_ like [SHA](https://en.wikipedia.org/wiki/SHA-3).

When we identify content in this way, using the content's cryptographic hash instead of its location to identify it, this is called _content-addressing_.
The cryptographic hash for a piece of content never changes, which means **content addressing guarantees that the links will always return the same content**, regardless of _where_ I retrieve the content from, regardless of _who_ added the content to the network, and regardless of when the content was added. That's the essential power of using a _content-addressed_ protocol like IPFS instead of using a _location-addressed_ protocol like HTTP.

This decentralized, content-addressed approach radically increases the durability of data. It ensures that data will not become endangered as long as anyone is still relying on it because anyone can hold a valid copy of the data they care about. If you hold a copy of a dataset on any of your devices, or if you pay someone to host it on an IPFS node for you, you become part of the network of stewards who protect that dataset from being lost. You won't have to worry about whether someone is going to turn off the servers where your data are hosted because _you are one of the hosts_. You and your peers hold the data among yourselves and are able to share the data directly with each other without relying on centralized points of failure.

Decentralization also increases the integrity of data because links are content-addressed. This means we can validate data by checking the data's fingerprints against the links. That kind of validation is impossible with location-addressed links. This is especially powerful on the large scale, where thousands of datasets reference each other millions of times. With location-addressed links, all of those connections are brittle. With content-addressed links, the connections become resilient.


## How to Do It: Write Content onto IPFS and Publish the Hashes

[IPFS](https://ipfs.io) is a content-addressed protocol designed as a replacement for HTTP. There are multiple free, open-source software implementations of the protocol. You can use that software to run an IPFS node, add your data to the IPFS network or to hold copies of data that other people have published.

If you want to use IPFS to save your data, you need to write your content to IPFS and then replicate that content across your network of peers using the IPFS protocol. To do this, there are four main steps:

1. [Install an IPFS node](https://flyingzumwalt.gitbooks.io/decentralized-web-primer/content/install-ipfs/) on a machine (laptop, desktop, server, etc.) that has internet access.
2. [Add the content to your IPFS node.](https://flyingzumwalt.gitbooks.io/decentralized-web-primer/content/files-on-ipfs/)
3. Tell your peers the cryptographic hashes (aka fingerprints) for the content you added to IPFS.
4. Let your peers replicate copies of the content onto their machines by "pinning" the hashes in their IPFS nodes

The IPFS community are assembling a [Decentralized Web Primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) that describes how to do this and more. The primer is a work in progress, but the key parts are ready to use. If you would like to help improve this documentation or if there is any part that especially needs improvement, please create issues on the [github repository](https://github.com/flyingzumwalt/decentralized-web-primer). We will be happy for any help, feedback or encouragement.

The next section of this document covers the basic concepts and steps involved in replicating content over IPFS. If you want to actually use these technologies, please refer to [the primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) and please make use of the IPFS community, who are ready to help. There's a [list of community resources on the ipfs github repository](https://github.com/ipfs/ipfs#project-and-community).

### Writing Content onto IPFS

The first step is to install an IPFS node on your machine and write your content into that node.  The IPFS node is how you participate in the peer-to-peer network, reading content from other nodes and providing content to nodes that request it. When you write content into your IPFS node, people will be able to request that content using its hash/fingerprint.

IPFS is a relatively new technology. The documentation is pretty minimal at the moment and is quite technical. The IPFS community are steadily working to improve the documentation and make it more accessible. If you would like to help with this effort, either writing or reviewing documentation, go use the [resources listed here](https://github.com/ipfs/ipfs#project-and-community) to get involved, or create an issue in the [IPFS Community github repository](https://github.com/ipfs/community)

[This Code for Philly workshop](http://codeforphilly.github.io/decentralized-data/tutorials/ipfs/) has links to the parts of the Decentralized Web Primer that are most complete. They cover all the core things you need to know in order to install an IPFS node and add a dataset to that IPFS node.

### Pinning Data to Save It

IPFS has a notion of _pinning_ content onto your IPFS node. When you "pin" content on your IPFS node, you're adding the content's hash (aka fingerprint) to the node's _pin set_. As long as you have that hash in the node's pin set, the node will keep a copy of the corresponding content on your machine.

When you write your dataset into IPFS, your IPFS node will give you the hash for that dataset. You can then pass that hash to any of your peers and ask them to pin it on their IPFS nodes as well. As soon as you add a hash to your IPFS node's pin set, the node will coordinate with peers on the IPFS network to pull a copy of the data onto your machine.

### Publishing the Hashes

The real power of the distributed web is the fact that anyone can participate. If you publish the hashes for the content that you want to save, anyone who cares about the data can pin their own copies, sharing the burden of storing and serving the data.

There's not one established way to publish hashes. An obvious way is to post them on a website or blog, but there are many other options. The idea is to pass the hashes around so people know which content to use or pin. For the long term, you need to give some thought to how you publish the hashes because you want people to get information about authenticity of the data, versioning, etc. The next section covers some of these strategies. Thankfully, you can backfill a lot of that information later. In the short term, the key is to get the hashes out to the people who might want to help save your data.

### Do I have to worry about Bad Content coming onto my machine?

IPFS is peer to peer technology, which tends to bring up concerns about bad content. People want to know "If I run an IPFS node, will that mean people can use my machine to serve bad content without my permission?" and "Will my IPFS node pull bad content onto my machine without my knowledge?" The maintainers of IPFS take this issue very seriously. The IPFS protocol is explicitly designed to ensure that **you have complete control over which content comes onto your machine through IPFS**. Your IPFS node will only read the content you tell it to read from the network. It will only store the content you tell it to store. This allows you to be confident that bad content won't accidentally arrive on your machine. If someone on the network publishes bad content, it won't leak onto your IPFS node. You would have to explicitly request the content in order for it to arrive on your machine or for it to even pass through your machine.

## Covering Your Bases: Strategies for Making your Content Resilient

In order to truly save your endangered data for the long term, you need to store and distribute the the data in ways that are resilient. This requires doing more than just writing your data to IPFS and asking your friends to pin copies of the data onto their machines. You also need to consider issues like redundancy, availability, authenticity, versioning and preservation. Here's a quick overview of each of those issues with some tips about how to handle it in a decentralized context.

### Talk to a Librarian

When grappling with these issues, it's helpful to look at libraries for inspiration or guidance. Libraries often talk about providing three types of services around their collections: _preservation_, _discovery_ and _access_. If you want people to engage with the content you've collected, you need to support all three of these things. If you slip in any of these areas, people won't be able to use your content.  This applies to the issue at hand - in order to save your endangered data, you need to cover all three of these bases. You need to _preserve_ the content so that it still exists for people to use. You need to keep metadata about the content so can people can search or browse through the metadata in order to _discover_ what you have in the collection. Finally, you need to give them a way to _access_ the content itself.

Speaking of libraries, **call your librarian** and ask them for advice. Libraries can help you figure some of this stuff out. They might even be able to help you store and serve your data.  **If you are a librarian**, consider running an IPFS pinning service at the library or consider running a registry of IPFS hashes. After doing that, call your friends at another library and ask them to consider it too.

### Achieving Redundancy

Lots Of Copies Keep Stuff Safe. That's a foundational idea in any preservation strategy. There's even a [project by that name](https://www.lockss.org/) which helps libraries preserve digital content (alas, it doesn't use IPFS yet). In order to protect your content, you want to get it pinned in many geographic locations, by many organizations, under multiple jurisdictions.

You could also spread a giant dataset across multiple peers, so that a group of participants can combine efforts to hold data that are beyond any individual's storage capacity.

### Ensuring Availability

If you want the data to be available online, redundancy isn't enough. You need to make sure that some of those copies are actually available on the network, otherwise nobody will be able to access the content. In order for data to be available online at all times, you need to ensure that there are always IPFS nodes connected to the network with copies of your data pinned on them.

The simple way to ensure availability is to run some IPFS nodes on servers that are already connected to the web 24/7. If you pin your data on those nodes, the data will remain available as long as the nodes stay alive.  This is an example of how cloud services can be useful -- you can run an IPFS node on a hosting service or cloud service and pin your content there.

There are lots of strategies for making content available in a even more robust ways. For example, if you have access to multiple datacenters, you can pin content on nodes at both datacenters. This will allow you to serve content through multiple pipes simultaneously. The IPFS team are currently working on a project called [ipfs-cluster](https://github.com/ipfs/ipfs-cluster) that will let you configure and coordinate IPFS nodes and pin sets according to different strategies.

### Ensuring Authenticity

Once your data are out in the wild, how do we know which data are the _real_ data? Until now, we have relied on location as a proxy for authenticity by saying "If it's on your server, then it must be the real information that you want me to see." This is a terrible way of establishing authenticity (the hosts could tamper with data, hackers could change it without anybody knowing, it could accidentally become corrupt, etc.).  Nonetheless, that's how we've been establishing authenticity of data on the web for a long time. It's a strongly ingrained habit that we can't rely on with distributed technologies. What's the alternative?

With content-addressed protocols, we just care about where the hash, the address, came from. Based on that hash I can get content from many places. That makes it really important to know that the hash is authentic. We want to know _who_ said "The correct data has this fingerprint." or "The current version of our official data has this fingerprint." or "My improved version of the data has this fingerprint." and we want to know exactly which hashes they provided as the fingerprint.

There are a number of ways to tell the world which hashes are the "authentic" fingerprints of your content. They each have strengths and weaknesses. Some of these approaches will survive servers being shut down and organizations dismantled. Others are easier to understand and easier to implement. Some rely on independent authorities like libraries and newspapers. Others work in a trustless environment -- they avoid relying on any central authority to establish authenticity.

The key idea for establishing authenticity of your data is to put authoritative statements about your content's hashes into the public record. The trick is to choose places that can't be shut down or corrupted. For example, you could put the hashes on your website but if your website gets turned off you lose that proof of authenticity. Worse, if someone takes over the website and posts _bad_ hashes, that makes it very hard to find out who to trust. This is why authenticity is tricky.

A relatively reliable low-tech technique would be to publish the hashes in a newspaper or an academic journal. This relies on the distribution channels of those publications to ensure persistent access to the hashes.

You could also go to your library and ask them to run authenticated registries of content addresses. In the long term, they would probably use blockchains to do this (see below), but in the short term they can hold the information and redistribute it by whatever means possible.

Both of these approaches rely on independent authorities (either the newspaper/journal publishers or the libraries) to record your authoritative statements as part of the public record. These approaches are vulnerable to attacks, such as the library's funding getting cut or the publisher being forced to publish bad information, but they are more durable than publishing the hashes on your website.

The most technically correct ways to indicate the provenance of your hashes involve [public key cryptography](https://en.wikipedia.org/wiki/Public-key_cryptography), where you cryptographically sign hashes (or metadata about the hashes) with a secure, private cryptographic key. That's the cryptographic equivalent of using a wax seal to mark a document as authentic. Sadly, though public key cryptography has been around for a long time, the tools for managing keys and signing content are still unwieldy and intimidating. This is unfortunate. The world will benefit massively when somebody builds the right user experiences around those technologies. A number of projects are working that problem. [Keybase](https://keybase.io/) is particularly promising.

One technique that relies on public key cryptography is IPNS, the IPFS name service. IPNS is still in development. It's explained in [the IPFS whitepaper](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true) and in [the IPFS specification](https://github.com/ipfs/specs/blob/1fa205021b42a2bb2637bab54549ec005760bfd4/architecture/README.md#35-naming----pki-namespace-and-mutable-pointers)

Another popular technique that's still in its infancy, and therefore difficult to adopt, is to write your hashes onto a blockchain.  Blockchains are decentralied ledgers. We say they're distributed because they're not held or controlled by any individual party or group -- everyone who is participating in the ledger holds an equally valid copy of the ledger. When you write a transaction on a blockchain ledger, it's visible to all of the parties who are participating in the ledger and anyone can validate the transaction without relying on a central authority. This means you can write your hashes into a transaction on a blockchain ledger in order to make it globally visible in a way that's very hard to erase. Even if you were to disappear and even if your organization disappears, the ledger will show that you announced those hashes. In order to corrupt that record, a malicious party would have to compromise a majority of the participants in the ledger, which is often thousands of parties spread around the world. This makes it one of the most promising ways to preserve small amounts of tamper-proof content, like our announced hashes.

### Dealing with Versioning

This is not a one-time process. In most cases datasets change, grow and evolve over time. In order to accommodate those changing, growing, evolving datasets we need ways to keep track of the different versions of content. Thankfully, content-addressing gives you the basic building block that you need in order to track versions gracefully. Powerful versioning tools like [git](https://git-scm.com) build on that same foundation of content-addressing and use cryptographic hashes to build trees of information to represent history, versions, forks, etc.

For example, each time you make a new version of your data you will have a new hash to uniquely identify that version. This is really powerful. The only remaining challenge is to tell your peers which hashes correspond to which versions. You could do this in any number of ways. The simplest would be to list the hashes together with some description in a text file. If you want that information to be machine-parseable, you could put it in JSON instead of free text.

An amazing bonus of the decentralized web: you can put that versioning information into IPFS too, publishing the hashes for your whole version history.

At the moment there are not good tools to build these kinds of version histories with IPFS content, but all the pieces are there. If you know a software developer who's looking for a good project to sink their teeth into, point them our way. We would love to help them tackle it. Encourage them to express their interest by creating an issue on the [IPFS Community github repository](https://github.com/ipfs/community).

### Preserving Data

Finally, beyond redundancy, availability, versioning, etc. there's the question of preservation. In order to build a preservation strategy, you need to look at threat models and then figure out how to protect your data from those threats.

Preservation is a huge topic that gets into file formats, storage devices, organizational sustainability, etc, but one thing is certainly relevant to this document: you should not rely on IPFS alone. You should also store the content on a variety of online and offline storage devices in a variety of locations.

This brings up another way that content-addressing is valuable because the hashes we use to identify content in IPFS are useful as _checksums_ for validating any copies of the data, regardless of where they're stored. For the copies of your data you've stored outside of IPFS, maybe on a backup hard drive, offline storage, or a [memory crystal](http://physicsworld.com/cws/article/news/2013/jul/17/5d-superman-memory-crystal-heralds-unlimited-lifetime-data-storage) you can validate those copies at any time by _checking_ their cryptographic hashes and making sure that those hashes match the ones you've published. **The content-addressed links identify the content wherever it is, even if it's outside IPFS.**

# Why the Established Tools Aren't Good Enough

All this talk of decentralization and content-addressing might sound excessive. It's a major change from the way we've been doing things for the past 15 years. As closing observations, we'll touch on some reasons why it's not enough to rely on the established tools and technologies.

## What's wrong with just moving the data to a new, trusted location?

Merely moving the data to a new location is not enough because it perpetuates all the problems of location-addressing. It brings all the pain and inconvenience of breaking the location-based links we've been relying on but doesn't bring any of the benefits of switching to a content-addressed approach.

## Why isn't it enough to have everyone download copies of the data?

Lots of Copies Keep Stuff Safe, but simply downloading copies of the data to many locations is basically adopting a decentralized approach without using any of the tools of decentralization. You need a content-addressed approach in order to answer basic questions like "Who has copies of the data?", "Are these two copies of the data identical?" and in order to communicate things like "Here is the latest version of the data" and "I have the last three versions of the data. Which one do you want?"

## Can't we use the cloud to back up the data?

![Sticker: "There is no Cloud. It's just someone else's computer."](https://d21ii91i3y6o6h.cloudfront.net/gallery_images/from_proof/3442/large/1418280711/die-cut-stickers.png)

Many people associate cloud services with data backup. It's easy to dump copies of your data onto any number of cloud services, and most cloud providers are eager to sell the idea that their services are great for backup and disaster recovery.

The good news: This means it's easy, and relatively cheap, for almost anyone to provision any amount of storage.  The bad news: this doesn't solve the fundamental problem on its own.

As the designer Chris Watterston expressed so aptly in a [popular sticker](https://www.chriswatterston.com/blog/my-there-no-cloud-sticker), "There is no Cloud. It's just someone else's computer." Moving data onto cloud services does not solve the problem of centralization. It simply makes it easy for us to provision storage space and/or compute power in a range of locations. That's a powerful tool, but it's not the complete solution.

There is a way to use the convenience and cost benefits of the cloud to assist decentralized efforts. First, add your content to IPFS. Then, hire multiple independent cloud services to store the content and serve it using IPFS. This gives you service redundancy. Ideally, also hire them to store it in multiple different geographical and political regions. This way, your precious content is protected from single entity and location based risks. And because the content is addressed and served by IPFS, the cloud providers cannot control the content, or change it. This is the right way to use the cloud: for its convenience, but without ceding control to it. Always keep copies elsewhere too, just in case. You never know [when a cloud service might shut down](https://gist.github.com/jbenet/57debff15b1601d71f50fef8c78a5f53).

## Can Libraries Save the Day?

Yes, libraries can play a huge role in this. Decentralized technologies are a perfect fit for libraries. This is an amazing opportunity for you to work with your libraries to create a resilient infrastructure for humans to share and hold digital information.

# Become a Steward of Your Data

If you'd like to get help with the things discussed in this article, or if you'd like to contribute to IPFS and all the tools that make this possible, go [here](https://github.com/ipfs/ipfs#project-and-community) or email contact@protocol.ai. If you have a use-case in mind but IPFS needs more features or bug fixes, please post issues [here](https://github.com/ipfs/issues).  

If you can think of data out in the world that you want to protect, please take steps to preserve it. Decentralized technologies finally make it possible for all of us to become stewards of the information we care about.
