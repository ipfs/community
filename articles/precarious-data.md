
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Instructions for Saving Endangered Data: It's time to get decentralized.](#instructions-for-saving-endangered-data-its-time-to-get-decentralized)
	- [The Situation: Endangered Data Woven into a Precarious Web](#the-situation-endangered-data-woven-into-a-precarious-web)
	- [The Problem: Identifying Content by its Location](#the-problem-identifying-content-by-its-location)
	- [The Solution: Identify Information by its Fingerprint, not its Location](#the-solution-identify-information-by-its-fingerprint-not-its-location)
	- [How to Do It: Write Content onto IPFS and Publish the Hashes](#how-to-do-it-write-content-onto-ipfs-and-publish-the-hashes)
		- [Do I have to worry about Bad Content coming onto my machine?](#do-i-have-to-worry-about-bad-content-coming-onto-my-machine)
		- [Writing Content onto IPFS](#writing-content-onto-ipfs)
		- [Pinning](#pinning)
		- [Publishing the Hashes](#publishing-the-hashes)
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

<!-- /TOC -->

# Instructions for Saving Endangered Data: It's time to get decentralized.

## The Situation: Endangered Data Woven into a Precarious Web

**precarious**
adj. Dangerously lacking in security or stability: _a precarious posture; precarious footing on the ladder._
adj. Subject to chance or unknown conditions.

We keep grabbing pieces of the web before they fall away.  It happened with GeoCities. It's happening with climate data. It also happens in little ways every time someone takes a snapshot of a controversial tweet or Facebook thread before it gets deleted. Our digital lives are woven into the World Wide Web and that web is woven from unstable fibers. We've resisted the degradation of that web with abortive attempts to grab snapshots of content before it changes or disappears, but this isn't enough. It's time to weave a more resilient web by using decentralized techniques. We can start by using these techniques to catch and hold endangered data.

The World Wide Web is precarious. It's a network of information, discussions, data, and analysis that relies on HTTP links to maintain connections between the pieces. Those links are unreliable because the content they point to is unstable. If you rely on an HTTP service as the authoritative source of data you're building on a precarious foundation. Next time you feel the pain of this precarity, I encourage you to take it as a sign that it's time for you to embrace the decentralized web.

When you hear about people scrambling to "back up" data from services that are about to be turned off, or when you find yourself backing up that content yourself, I want you to ask “Why are we still using location-based links to point to stuff on the web? Links shouldn't point to locations where the content _might_ be found. They should point to the content itself, which can exist in many locations at once.”

Centralization is a disease that the web is suffering from. Information can exist in many places at once, yet we have built the web using links which pretend that the information they're pointing to only exists in one location. This makes locations artificially important, turning them into points of failure and conveying great power and responsibility to whoever controls those locations. That's centralization: Despite the fact that information can exist in many places at once, we link to information as if it existed at singular locations, which forces us to rely on central locations whenever we want to acquire information or traverse links between pages, datasets, documents, etc.

There are many symptoms of this centralization disease. When someone shuts down a property on the web or decides to pervert the information at that location it can harm whole groups of people - industries, fields of research, global communities, etc. Sometimes in the face of a pending shutdown people scramble to save endangered data. Other times locations become unavailable suddenly due to attacks, neglect, loss of funding or pure coincidence and people have to cope with the data loss. Those are just two gross symptoms of centralization. There are many more.

The remedy for this centralization is to change how we link to content on the web. Information on the web is, by its nature, decentralized. We just pretend that it exists in discrete, centralized locations. The web itself is already decentralized; information already propagates across the web whenever people use it. We just need to start using that decentralized nature of information for our benefit rather than pretending that it's not happening.

Decentrailzed web technologies will smooth the process of saving endangered data now and will prevent this problem from happening again in the future. Organizations like the Internet Archive, the Sloan Foundation and the Knight Foundation have been encouraging the use of decentralized technologies for some time. The most visible manifestation of this effort was the [Decentralized Web Summit](https://www.decentralizedweb.net) in June 2016.

Technologies and protocols like [IPFS](https://ipfs.io) and [Dat](http://datproject.org) let you link to the content itself, wherever it is, based on its fingerprint. These free open source tools, built on proven techniques, offer the most direct path to decentralizing your data while retaining the integrity of those data. Even better, if there are already many copies of the data around the world, these tools will let you transform those many copies of your data into a resilient decentralized network of data providers that grows whenever someone reads the data or publishes a copy of the data they already had.  

## The Problem: Identifying Content by its Location

When you use an `http://` or `https://` link to point to a webpage, image, spreadsheet, dataset, tweet, etc, you're identifying content by its location.  The link is an identifier that points to a particular location on the web, which corresponds to a particular server, or set of servers, somewhere on the web.  **Whoever controls that location controls the content.** That's how HTTP works. It's _location-addressed_. Even if a thousand people have downloaded copies of a file, meaning that the content exists in a thousand locations, HTTP points to a single location and whoever controls that location decides what content to return when people use that HTTP link. They also decide whether to return any content at all.

To get a sense of how impractical it is to address content by its location, imagine if we referenced books by their location. Imagine that I want to recommend reading the book [Why Information Grows](http://www.goodreads.com/book/show/20763722-why-information-grows). What if I used location-addressing to identify the book, saying "Go to the coffee shop at Sydenham & Walnut in Philadelphia and ask for the thing 16 inches from the south end of the third shelf on the east wall" That's how we're identifying information when we use HTTP links. It gives you very little to run on, there are lots of things that could go wrong, and whoever controls the location you're pointing to - in this case the Coffee Shop - has a lot of power and responsibility.

Let's consider the responsibilities of whoever controls the location we've pointed to. If the people running the Coffee Shop want my directions (aka. my "link") to remain valid, allowing people to access the book, they have to:

* Always be open, in case someone wants to read the book.
* Provide the book to _everyone_ who seeks the book, whether it's one person or hundreds of thousands of people.
* Protect the integrity of the book by preventing anyone from tampering with it.
* Never remove the book from its shelf - if they get rid of it, or even move it, my link is broken and nobody will be able to use my instructions to find the book.

Along with those responsibilities come a great amount of power. The proprietors of the Coffee Shop control the location that my directions point to, so they can choose to:

* Dictate who is allowed to see the book.
* Move the book without telling anyone.
* Destroy the book.
* Charge people money to access the book or force them to watch ads when they walk in the door.
* Collect data about everyone who accesses my book, using that information however they want.
* Replace the book with something else -- They might not even put a book there, since my instructions are just describing a location, a malicious actor could replace the book with something dangerous, turning the location into a trap!

By contrast, If I identify the book by saying "Check out _Why Information Grows_ by César Hidalgo. It was published by Basic Books in 2015. The ISBN is 0465048994.", you will be able to get any copy of the book and know that you're reading the information I recommended. You might even say "Oh. I already read it." or "My roommate has it in the other room. I'll borrow it from him.", saving yourself the cost or effort of getting another copy.

Translating these examples back to the way we link to information on the internet, some of the ways location-addressing fails are:

* If the link points to a server that has been turned off or had an outage, the link is useless - it doesn't give me a way to find the same content elsewhere.
* If the link points to a server that has been hacked, I might have no way to know that I'm getting bad content from that hacked location.
* If you give me a link and someone changes the content at that location, it's hard (or impossible) for me to know that the content I retrieve from that location is different from the content you _thought_ you were pointing to.
* I might already have a copy of the content, meaning I don't really need to retrieve it again, but the link doesn't give me a way to know that I already have it. I would have to download the content again and compare.
* If someone on my local network has a copy of the content, the link doesn't let me get the content from that alternate local source. It only lets me get the content from the location identified by the link. This is especially painful if my internet connection is slow or if I don't have an internet connection at all.

## The Solution: Identify Information by its Fingerprint, not its Location

The alternative is to identify content by its "fingerprint" rather than identifying it by its location. That way, when someone says "Look at the content with this fingerprint" you can get it from anyone who has a copy of the content. To do this, we identify content by its cryptographic hash. When we identify content in this way, using the content's fingerprint instead of its location to identify it, this is called _content-addressing_.
The cryptographic hash for a piece of content never changes, which means **content addressing guarantees that the links will always return the same content**, regardless of _where_ I retrieve the content from.  You can do it by using a _content-addressed_ protocol like IPFS instead of using a _location-addressed_ protocol like HTTP.

This decentralized approach radically increases the durability of data. It ensures that data will not become endangered as long as anyone is still relying on it because anyone can hold a valid copy of the data they care about. If you hold a copy of a dataset on any of your devices you become part of the network of stewards who protect if from being lost. You won't have to worry about whether someone is going to turn off the servers where your data are hosted because _you are one of the hosts_. You and your peers hold the data among yourselves and are able to share the data directly with each other without relying on centralized points of failure.

Decentralization also increases the integrity of data because links are content-addressed. This means we can validate data by checking the data's fingerprints against the links. That kind of validation is impossible with location-addressed links. This is especially powerful on the large scale, where thousands of datasets reference each other millions of times. With location-addressed links, all of those connections are brittle. With content-addressed links, the connections become resilient.


## How to Do It: Write Content onto IPFS and Publish the Hashes

If you want to use IPFS to save your data, you need to write your content to IPFS and then replicate that content across your network of peers using the IPFS protocol. To do this, there are four main steps:

1. Install an IPFS node on a machine that has internet access.
2. Add the content to your IPFS node.
3. Tell your peers the cryptographic hashes (aka fingerprints) for the content you added to IPFS.
4. Let your peers replicate copies of the content onto their machines by "pinning" the hashes in their IPFS nodes

The IPFS community are assembling a [Decentralized Web Primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) that describes how to do this and more. The primer is a work in progress, but the key parts are ready to use. If you would like to help improve this documentation or if there is any part that especially needs improvement, please create issues on the [github repository](https://github.com/flyingzumwalt/decentralized-web-primer). We will be happy for any help, feedback or encouragement.

In the remainder of this article we will run through the basic concepts and steps involved. If you want to actually use these technologies, please refer to [the primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) and please make use of the IPFS community, who are ready to help. There's a [list of community resources on the ipfs github repository](https://github.com/ipfs/ipfs#project-and-community).

### Do I have to worry about Bad Content coming onto my machine?

Before talking about how to run IPFS on your machines, we need to address a common hesitation around whether it's safe to run it. People want to know what they're getting into before they install new technology.

IPFS is peer to peer technology, which tends to bring up concerns about bad content. People want to know "If I run an IPFS node, will that mean people can use my machine to serve bad content without my permission?" and "Will my IPFS node pull bad content onto my machine without my knowledge?" This is a very important question to ask. The IPFS protocol is explicitly designed to ensure that **your node will only read content from the network if you tell it to read that content**. For example, if you only use IPFS to deal with genomics data, your IPFS node will only ever hold the genomics data you've requested and it will only serve the genomics data you've published. The maintainers of the IPFS software take this very seriously.

You have complete control over which content comes onto your machine through IPFS. Your IPFS node will only read the content you tell it to read from the network. It will only store the content you tell it to store. This allows you to be confident that bad content won't accidentally arrive on your machine. If someone on the network publishes bad content, it won't leak onto your IPFS node. You would have to explicitly request the content in order for it to arrive on your machine or for it to even pass through your machine.

### Writing Content onto IPFS

The first step is to install an IPFS node on your machine and write your content into that node.  The IPFS node is how you participate in the peer-to-peer network, reading content from other nodes and providing content to nodes that request it. When you write content into your IPFS node, people will be able to request that content using its hash/fingerprint.

IPFS is a relatively new technology. The documentation is pretty minimal at the moment and is quite technical. The IPFS community are steadily working to improve the documentation and make it more accessible.

This [Code for Philly workshop](http://codeforphilly.github.io/decentralized-data/tutorials/ipfs/) has links to the parts of the Decentralized Web Primer that are most complete. They cover all the core things you need to know in order to install an IPFS node and add a dataset to that IPFS node.

### Pinning

IPFS has a notion of _pinning_ content onto your IPFS node. When you "pin" content on your IPFS node, you're adding the content's hash (aka fingerprint) to the node's _pin set_. As long as you have that hash in the node's pin set, the node will keep a copy of the corresponding content.

When you write your dataset into IPFS, your IPFS node will give you the hash for that dataset. You can then pass that hash to any of your peers and ask them to pin it on their IPFS nodes as well.

### Publishing the Hashes

The real power of the distributed web is the fact that anyone can participate. If you publish the hashes for the content that you want to save, anyone who cares about the data can pin their own copies, sharing the burden of storing and serving the data.

There's not one established way to publish hashes. One obvious way is to post them on a website or blog, but there are many other options. The key is to pass the hashes around so people know which content to use or pin. For the long term, you need to give some thought to how you publish the hashes because you want people to get information about authenticity of the data, versioning, etc. The next section covers some of these strategies. Thankfully, you can backfill a lot of that information later. In the short term, the key is to get the hashes out to the people who might want to help save your data.

## Covering Your Bases: Strategies for Making your Content Resilient

In order to truly save your endangered data for the long term, you need to store and distribute the the data in ways that are resilient. This requires doing more than just writing your data to IPFS and asking your friends to pin copies of the data. You also need to consider issues like redundancy, availability, authenticity, versioning and preservation. Here's a quick overview of each of those issues with some tips about how to handle it in a decentralized context.

### Talk to a Librarian

When grappling with these issues, it's helpful to look at libraries for inspiration or guidance. Libraries often talk about providing three types of services around their collections: _preservation_, _discovery_ and _access_. If you want people to engage with the content you've collected, you need to support all three of these things. You need to _preserve_ the content so that it still exists for people to use. You need to keep metadata about the content so can people can search or browse through the metadata in order to _discover_ what you have in the collection. Finally, you need to give them a way to _access_ the content itself. If you slip in any of these areas, people won't be able to use your content.  This applies to the issue at hand - in order to save your endangered data, you need to cover all three of these bases.

Speaking of libraries, **call your librarian** and ask them for advice. Libraries can help you figure some of this stuff out. They might even be able to help you store and serve your data.  **If you are a librarian**, consider running an IPFS pinning service at the library or consider running a registry of IFPS hashes. After doing that, call your friends at another library and ask them to consider it too.

### Achieving Redundancy

LOCKSS. Lots Of Copies Keep Stuff Safe. That's a foundational layer to any robust preservation strategy. There's even a [project by that name](https://www.lockss.org/) which helps libraries preserve digital content (alas, it doesn't use IPFS yet). In order to protect your content, you want to get it pinned in many geographic locations, by many organizations, under multiple jurisdictions. 

### Ensuring Availability

Redundancy isn't enough. You need to make sure that some of those copies are actually available on the IPFS network, otherwise nobody will be able to access the content. If you want data to remain available online at all times, you need to ensure that there are always IPFS nodes connected to the network with copies of your data pinned on them.

The simple way to ensure availability is to run some IPFS nodes on servers that are already connected to the web 24/7. If you pin your data on those nodes, the data will remain available as long as the nodes stay alive.  

There are lots of strategies for making content available in a more robust way. For example, if you have access to multiple datacenters, you can pin content on nodes at both datacenters. This will allow you to serve content through multiple pipes simultaneously. The IPFS team are currently working on a project called [ipfs-cluster](https://github.com/ipfs/ipfs-cluster) that will let you configure and coordinate IPFS nodes and pin sets according to different strategies. 

### Ensuring Authenticity

Once your data is out in the wild, how do we know which data are the the _real_ data? Until now, we have relied on location as a proxy for authenticity by saying "If it's on your server, then it must be the real information that you want me to see." As we discussed in the section about the problems with location-addressing, this was a terribly insecure way of establishing authenticity. Nonetheless, that's how we've been establishing authenticity of data on the web. It's a strongly ingrained habit that we can't rely on with distributed technologies.

Librarians and archivists tend to talk about this in terms of _provenance_: we want to know where the content came from and how it has changed along the way. If we are uncertain about the provenance of a dataset, that prevents us from using it as an authoritative source.

With content-addressed protocols, we just care about the provenance of the address. As long as I know which fingerprint to watch for, I can get content from anywhere. That makes it really important to know which fingerprints to look for. We want to know who said "The correct data has this fingerprint." or "The current version of our official data has this fingerprint." or "My improved version of the data has this fingerprint."

There are a number of ways to tell the world which hashes are the "authentic" fingerprints of your content. They each have strengths and weaknesses. Some will survive servers being shut down and organizations dismantled. Others are easier to understand and easier to implement. Some rely on independent authorities like libraries and newspapers. Others work in a trustless environment -- they avoid relying on any central authority to establish authenticity.

The key idea for establishing authenticity of your data is to put authoritative statements about your content's hashes into the public record. The trick is to choose places that can't be shut down or corrupted. For example, you could put the hashes on your website but if your website gets turned off you lose that proof of authenticity. Worse, if someone takes over the website and posts _bad_ hashes, that makes it very hard to find out who to trust. This is why authenticity is tricky.

A relatively reliable low-tech technique would be to publish the hashes in a newspaper or an academic journal. This relies on the distribution channels of those publications to ensure persistent access to the hashes. It also, by extension, relies on libraries to hold copies of those publications for people to use as references in the future.

You could also go directly to the libraries and ask them to run authenticated registries of content addresses. In the long term, they would probably use blockchains to do this (see below), but in the short term they can hold the information and redistribute it by whatever means possible. 

Both of these approaches rely on independent authorities (either the newspaper/journal publishers or the libraries) to record your authoritative statements as part of the public record. These approaches are vulnerable to attacks, such as the library's funding getting cut or the publisher being forced to publish bad information, but they are more durable than publishing the hashes on your website. 

The most technically correct ways to indicate the provenance of your hashes involve [public key cryptography](https://en.wikipedia.org/wiki/Public-key_cryptography), where you cryptographically sign hashes (or metadata about the hashes) with a secure, private cryptographic key. That's the cryptographic equivalent of using a wax seal to mark a document as authentic. Sadly, though public key cryptography has been around for a long time, the tools for managing keys and signing content are still unwieldy and intimidating. This is unfortunate. The world will benefit massively when somebody builds the right user experiences around those technologies. A number of projects are working that problem. [Keybase](https://keybase.io/) is particularly promising.

One technique that relies on public key cryptography is IPNS, the IPFS name service. IPNS is still very new. It's explained in [the IPFS whitepaper](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true) and in [the IPFS specification](https://github.com/ipfs/specs/blob/1fa205021b42a2bb2637bab54549ec005760bfd4/architecture/README.md#35-naming----pki-namespace-and-mutable-pointers)

Another popular technique that's still in its infancy, and therefore difficult to adopt, is to write your hashes onto a blockchain.  Blockchains are distributed ledgers. We say they're distributed because they're not held or controlled by any individual party or group -- everyone who is participating in the ledger holds an equally valid copy of the ledger. When you write a transaction on a blockchain ledger, it's visible to all of the parties who are participating in the ledger and anyone can validate the transaction without relying on a central authority. This means you can write your hashes into a transaction on a blockchain ledger in order to make it globally visible in a way that's very hard to erase. Even if you were to disappear and even if your organization disappears, the ledger will show that you announced those hashes. In order to corrupt that record, a malicious party would have to compromise a majority of the participants in the ledger, which is often thousands of parties spread around the world.

### Dealing with Versioning

This is not a one-time process. In most cases, datasets change, grow and evolve over time. In order to accommodate those changing, growing, evolving datasets we need ways to keep track of the different versions of content. Thankfully, content-addressing gives you the basic building block that you need in order to track versions gracefully.  

### Preserving Data

In order to truly preserve your data, protecting it from a variety of threat models, you should not rely on IPFS alone. You should also store the content on a variety of storage devices in a variety of locations. This is another way that content-addressing is valuable because the hashes are useful as _checksums_ for validating any copies of the data, regardless of where they're stored. For the copies of your data you've stored outside of IPFS, maybe on a backup hard drive, offline storage, or a [memory crystal](http://physicsworld.com/cws/article/news/2013/jul/17/5d-superman-memory-crystal-heralds-unlimited-lifetime-data-storage) you can validate those copies at any time by _checking_ their cryptographic hashes and making sure that those hashes match the ones you've published. **The content-addressed links identify the content wherever it is, even if it's outside IPFS.**

# Why the Established Tools Aren't Good Enough

All this talk of decentralization and content-addressing might sound excessive. It's a major change from the way we've been doing things for the past 15 years.

## What's wrong with just moving the data to a new, trusted location?

Moving data to a new location is not enough, but moving data to many locations is confusing.

## Why isn't it enough to have everyone download copies of the data?

Lots of Copies Keep Stuff Safe. But...

## Can't we use the cloud to back up the data?

![Sticker: "There is no Cloud. It's just someone else's computer."](https://d21ii91i3y6o6h.cloudfront.net/gallery_images/from_proof/3442/large/1418280711/die-cut-stickers.png)

Many people associate cloud services with data backup. It's easy to dump copies of your data onto any number of cloud services, and most cloud providers are eager to sell the idea that their services are great for backup and disaster recovery.

The good news: This means it's easy, and relatively cheap, for almost anyone to provision any amount of storage.  The bad news: this doesn't solve the fundamental problem on its own.

As the designer Chris Watterston expressed so aptly in a [popular sticker](https://www.chriswatterston.com/blog/my-there-no-cloud-sticker), "There is no Cloud. It's just someone else's computer." Moving data onto cloud services does not solve the problem of centralization. It simply makes it easy for us to provision storage space and/or compute power in a range of locations. That's a powerful tool, but it's not the complete solution.

## Can Libraries Save the Day?

Yes, by holding copies of content that also exists elsewhere.

The core mission of a library is to provi
