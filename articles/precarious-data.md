Instructions for Saving Endangered Data: It's time to get decentralized.
===

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

To get a sense of how silly it is to identify content by its location, imagine if we referenced books by their location. Imagine that I want to recommend reading the book [Why Information Grows](http://www.goodreads.com/book/show/20763722-why-information-grows). What if I used location-addressing to identify the book, saying "Check out the thing 16 inches from the south end of the third shelf on the east wall of the coffee shop at Sydenham & Walnut in Philadelphia" That gives you very little to run on, and there are lots of things that could go wrong.

This puts a big burden on the Coffee Shop if they want my book to remain available at that location. They have to:
* Always be open, in case someone wants to read the book.
* Provide the book to _everyone_ who seeks the book, whether it's one person or 100 thousand people.
* Never remove the book from its shelf - if they get rid of it, or even move it, my link is broken.
* Prevent anyone from tampering with the book.

It also gives the Coffee Shop a lot of power. They can

* Choose who is allowed to see the book.
* Throw the book away.
* Charge people money to access the book or force them to watch ads when they walk in the door.
* Collect data about everyone who accesses my book, using that information however they see fit.
* Replace the book with something else -- They might not even put a book there, since my instructions are just describing a location. A malicious actor could replace the book with something dangerous, turning the location into a trap!

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

## How to Do It: Write Content onto IPFS and Publish the Hashes

If you want to use IPFS to make content available in a decentralized fashion, you need to install IPFS, add your content to IPFS, and then tell your peers the cryptographic hashes (aka fingerprints) for the content you added. They can use those hashes to retrieve copies of the content. They can also use those hashes to link to the content.

The IPFS community are assembling a [Decentralized Web Primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) that describes how to do this and more. You can read or download the primer at The primer is a work in progress. This [Code for Philly workshop](http://codeforphilly.github.io/decentralized-data/tutorials/ipfs/) has links to the most complete operations of the primer.

### Writing Content onto IPFS

### Pinning

### Ensuring Availability
Don't rely on paths that controlled paths (paths that traverse centralized services)
If people are trying to help you by holding copies of your data, how do they know which content to pin on their machines?

### Ensuring Authenticity

Once your data is out in the wild, how do we know which data are the the _real_ data? Until now, we have relied on location as a proxy for authenticity by saying "If it's on your server, then it must be the real information that you want me to see." Of course, this

After you have written content into IPFS and given the hashes to your peers, you need to give people a way to know which hashes point to the _real_ content. This allows people to trust that the hashes they're using are the hashes for _your_ content. It prevents bad actors from publishing other data and pretending it's yours.
The cryptographic way: use public key cryptography to sign hashes and publish those signed hashes ...

* Option: Use IPNS
* Option: Publish the hashes on a blockchain

Other ways:
* Option: Publish the hashes in a print publication. This approach is similar to the requirement in some states, like NY, where you must announce the formation of an LLC by publishing a notice in two newspapers. This is relying on independent authorities to record the information as part of the public record and relies on the distribution channels of those publications to ensure persistent access to the hashes.

### Achieving Redundancy & Preservation

Libraries! Call your librarian.
LOCKSS

### Dealing with Versioning







# NOTES: Stuff I might include...

# Notes for the Skeptical:

## Moving data to a new location is not enough

Moving data to a new location is not enough, but moving data to many locations is confusing.

## Lots of Copies Keep Stuff Safe. But...

## There is no Cloud. It's just someone else's computer.
![Sticker: "There is no Cloud. It's just someone else's computer."](https://d21ii91i3y6o6h.cloudfront.net/gallery_images/from_proof/3442/large/1418280711/die-cut-stickers.png)

Many people associate cloud services with data backup. It's easy to dump copies of your data onto any number of cloud services, and most cloud providers are eager to sell the idea that their services are great for backup and disaster recovery.

The good news: This means it's easy, and relatively cheap, for almost anyone to provision any amount of storage.  The bad news: this doesn't solve the fundamental problem on its own.

As the designer Chris Watterston expressed so aptly in a [popular sticker](https://www.chriswatterston.com/blog/my-there-no-cloud-sticker), "There is no Cloud. It's just someone else's computer." Moving data onto cloud services does not solve the problem of centralization. It simply makes it easy for us to provision storage space and/or compute power in a range of locations. That's a powerful tool, but it's not the complete solution.

## Can Libraries Save the Day?

Yes, by holding copies of content that also exists elsewhere.

The core mission of a library is to provi
