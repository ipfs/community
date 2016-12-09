Precarious Web, Endangered Data
===

**precarious**
adj. Dangerously lacking in security or stability: _a precarious posture; precarious footing on the ladder._
adj. Subject to chance or unknown conditions.

We keep grabbing pieces of the web before they fall away.  It happened with GeoCities. It's happening with climate data. It also happens in little ways every time someone takes a snapshot of a controversial tweet or Facebook thread before it gets deleted. Our digital lives are woven into the World Wide Web and that web is woven from unstable fibers. We've resisted the degradation of that web with abortive attempts to grab snapshots of content before it changes or disappears, but this isn't enough. It's time to weave a more resilient web by using decentralized techniques. We can start by using these techniques to catch and hold endangered data.

The World Wide Web is precarious. It's a network of information, discussions, data, and analysis that relies on HTTP links to maintain connections between the pieces. Those links are unreliable. The content they point to is unstable. Likewise, if you rely on an HTTP service as the authoritative source of data you're building on a precarious foundation. Next time you feel the pain of this precarity, I encourage you to take it as a sign that it's time for you to embrace the decentralized web.

When you hear about people scrambling to "back up" data from services that are about to be turned off, or when you find yourself backing up that content yourself, I want you to ask “Why are we still using location-based links to point to stuff on the web? Links shouldn't point to locations where the content _might_ be found. They should point to the content itself, which can exist in many locations at once.”

Centralization is a disease that the web is suffering from. Information can exist in many places at once, yet we have built the web using links which pretend there's only one location where you can find the information they're pointing to. This makes locations artificially important, turning them into points of failure and conveying great power and responsibility to whoever controls those locations. That's centralization: Despite the fact that information can exist in many places at once, we link to information as if it existed at singular locations, which forces us to rely on central locations whenever we want to acquire information or traverse links between pages, datasets, documents, etc.

There are many symptoms of this centralization disease. When someone shuts down a property on the web or decides to pervert the information at that location it can harm whole groups of people - industries, fields of research, global communities, etc. Sometimes in the face of a pending shutdown people scramble to save endangered data. Other times locations become unavailable suddenly due to attacks, neglect, loss of funding or pure coincidence and people have to cope with the data loss. Those are just two gross symptoms of centralization. There are many more.

The remedy for this centralization is to change how we link to content on the web. Information on the web is, by its nature, decentralized. We just pretend that it exists in discrete, centralized locations. The web itself is already decentralized; information already propagates across the web whenever people use it. We just need to start using that decentralized nature of information for our benefit rather than pretending that it's not happening.

Decentrailzed web technologies will smooth the process of saving endangered data now and will prevent this problem from happening again in the future. Organizations like the Internet Archive, the Sloan Foundation and the Knight Foundation have been encouraging the use of decentralized technologies for some time. The most visible manifestation of this effort was the [Decentralized Web Summit](https://www.decentralizedweb.net) in June 2016.

Technologies and protocols like [IPFS](https://ipfs.io) and [Dat](http://datproject.org) let you link to the content itself, wherever it is, based on its fingerprint. These free open source tools, built on proven techniques, offer the most direct path to decentralizing your data while retaining the integrity of those data. Even better, if there are already many copies of the data around the world, these tools will let you transform those many copies of your data into a resilient decentralized network of data providers that grows whenever someone reads the data or publishes a copy of the data they already had.  

## The Problem: Identifying Content by its Location

When you use an `http://` or `https://` link to point to a webpage, image, spreadsheet, dataset, tweet, etc, you're identifying content by its location.  The link is an identifier that points to a particular location on the web, which corresponds to a particular server, or set of servers, somewhere on the web.  **Whoever controls that location controls the content.** That's how HTTP works. It's _location-addressed_. Even if a thousand people have downloaded copies of a file, meaning that the content exists in a thousand locations, HTTP points to a single location and whoever controls that location decides what content to return when people use that HTTP link. They also decide whether to return any content at all.

## The Solution: Identify Information by its Fingerprint, not its Location

The alternative is to identify content by its "fingerprint" rather than identifying it by its location. That way, when someone says "Look at the content with this fingerprint" you can get it from anyone who has a copy of the content. To do this, we identify content by its cryptographic hash. When we identify content in this way, using the content's fingerprint instead of its location to identify it, this is called _content-addressing_.

The cryptographic hash for a piece of content never changes, which means **content addressing guarantees that the links will always return the same content**, regardless of _where_ I retrieve the content from.  You can do it by using a _content-addressed_ protocol like IPFS instead of using a _location-addressed_ protocol like HTTP.

## How to Do It: Write Content onto IPFS and Publish the Hashes

If you want to use IPFS to make content available in a decentralized fashion, you need to install IPFS, add your content to IPFS, and then tell your peers the cryptographic hashes (aka fingerprints) for the content you added. They can use those hashes to retrieve copies of the content. They can also use those hashes to link to the content.

The IPFS community are assembling a [Decentralized Web Primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) that describes how to do this and more. You can read or download the primer at The primer is a work in progress. This [Code for Philly workshop](http://codeforphilly.github.io/decentralized-data/tutorials/ipfs/) has links to the most complete operations of the primer.






# NOTES: Stuff I might include...

## Moving data to a new location is not enough

Moving data to a new location is not enough, but moving data to many locations is confusing.

## Lots of Copies Keep Stuff Safe. But...

## There is no Cloud. It's just someone else's computer.
![Sticker: "There is no Cloud. It's just someone else's computer."](https://d21ii91i3y6o6h.cloudfront.net/gallery_images/from_proof/3442/large/1418280711/die-cut-stickers.png)

Many people associate cloud services with data backup. It's easy to dump copies of your data onto any number of cloud services, and most cloud providers are eager to sell the idea that their services are great for backup and disaster recovery.

The good news: This means it's easy, and relatively cheap, for almost anyone to provision any amount of storage.  The bad news: this doesn't solve the fundamental problem on its own.

As the designer Chris Watterston expressed so aptly in a [popular sticker]((https://www.chriswatterston.com/blog/my-there-no-cloud-sticker), "There is no Cloud. It's just someone else's computer." Moving data onto cloud services does not solve the problem of centralization. It simply makes it easy for us to provision storage space and/or compute power in a range of locations. That's a powerful tool, but it's not the complete solution.

## Can Libraries Save the Day?

Yes, by holding copies of content that also exists elsewhere.

The core mission of a library is to provide access, discovery and preservation services...
