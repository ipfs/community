Precarious Web, Endangered Data
===

**precarious**
adj. Dangerously lacking in security or stability: _a precarious posture; precarious footing on the ladder._
adj. Subject to chance or unknown conditions.

It happened with GeoCities. It's happening with climate data. It also happens in little ways every time someone takes a snapshot of a controversial tweet or facebook thread before it gets deleted. Our digital lives are woven into the World Wide Web and that web sits on a precarious foundation. We've been shoring up that foundation with abortive attempts to grab snapshots of content before it changes or disappears. It's time to migrate the web onto resilient, decentralized foundations, starting with the endangered data.


The World Wide Web is precarious. Any network of information, discussions, data, or analysis that relies on HTTP links is built on a precarious foundation. Likewise, if you rely on an HTTP service as the authoritative source of data you're building on a precarious foundation. Next time you feel the pain of this precarity, I encourage you to take it as a sign that it's time for you to embrace the decentralized web.

Next time you hear about people scrambling to "back up" data from services that are about to be turned off, I want you to think “Why are we still using location-based links when we point to stuff on the web? Links shouldn't point to locations where the content _might_ be found. They should point to the content itself, which can exist in many locations at once.” 


Centralization is a disease that the web is suffering from. Information can exist in many places at once, yet we have built the web using links which pretend there's only one location where you can find the information they're pointing to. This makes locations artificially important, turning them into points of failure and putting great power and responsibility on whoever controls those locations. That's centralization: Despite the fact that information can exist in many places at once, we link to information as if it existed at singular locations, which forces us to rely on central locations whenever we want to acquire information or traverse links between pages, datasets, documents, etc. 


This centralization is a disease which has many symptoms. When someone shuts down a property on the web or decides to pervert the information at that location it can harm whole groups of people - industries, fields of research, global communities, etc. Sometimes in the face of a pending shutdown people scramble to save endangered data. Other times locations become unavailable suddenly due to attacks, neglect or pure coincidence and people have to cope with the data loss. Those are just two symptoms of centralization. There are many more.


The remedy for this centralization is to change how we link to content on the web. Information on the web is, by its nature, decentralized. We just pretend that it exists in discrete, centralized locations. The web itself is already decentralized; information already propagates across the web whenever people use it. We just need to start using that decentralized nature of information for our benefit rather than pretending that it's not happening.


Decentrailzed web technologies will smooth the process of saving endangered data now and will prevent this problem from happening again in the future.


Technologies and protocols like [IPFS](https://ipfs.io) and Dat let you link to the content itself, wherever it is, based on its fingerprint. These free open source tools, built on proven techniques, offer the most direct path to decentralizing your data while retaining the integrity of those data. Even better, if there are already many copies of the data around the world, these tools will let you transform those many copies of your data into a resilient decentralized network of data providers that grows whenever someone reads the data or publishes a copy of the data they already had.  


Organizations like the Internet Archive, the Sloan Foundation and the Knight Foundation have been encouraging the use of decentralized technologies for some time. The most visible manifestation of this effort was the [Decentralized Web Summit](https://www.decentralizedweb.net) in June 2016.

## The Problem: Identifying Content by its Location

When you use an `http://` or `https://` link to point to a webpage, image, spreadsheet, dataset, tweet, etc, you're identifying content by its location.  The link is an identifier that points to a particular location on the web, which corresponds to a particular server, or set of servers, somewhere on the web.  **Whoever controls that location controls the content.** That's how HTTP works. It's _location-addressed_. Even if a thousand people have downloaded copies of a file, meaning that the content exists in a thousand locations, HTTP points to a single location and whoever controls that location decides what content is returned when people use that HTTP link.
They also decide whether to return any content at all.

## The Solution: Identify Information by its Fingerprint, not its Location

The alternative is to identify content by its "fingerprint" rather than identifying it by its location. That way, when someone says "Look at the content with this fingerprint" you can get it from anyone who has a copy of the content. To do this, we identify content by its cryptographic fingerprint, known as a cryptographic hash.

The cryptographic fingerprint for a piece of content never changes, which means **content addressing guarantees that the links will always return the same content**, regardless of _where_ I retrieve the content from.

This is done using a _content-addressed_ protocol like IPFS instead of using a _location-addressed_ protocol like HTTP.

## How to Do It: Write Content onto IPFS and Publish the Hashes

If you want to use IPFS to make content available in a decentralized fashion, you need to install IPFS, add your content to IPFS, and then tell your peers the cryptographic hashes (aka fingerprints) for the content you added. They can use those hashes to retrieve copies of the content. They can also use those hashes to link to the content.


The IPFS community are assembling a [Decentralized Web Primer](https://flyingzumwalt.gitbooks.io/decentralized-web-primer) that describes how to do this and more. You can read or download the primer at The primer is a work in progress. This [Code for Philly workshop](http://codeforphilly.github.io/decentralized-data/tutorials/ipfs/) has links to the most complete operations of the primer.
