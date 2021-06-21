## Project Name <!-- Add your project name here with format "Project Name"-->
Interplanetary Contact
## Category 
<!--developer tooling, application, wallet, infrastructure, etc-->
Application and Infrastructure
## Project Description
<!--Describe your project in a few sentences. -->
Use an IPFS node for identity and messaging instead of an e-mail server which transfers email through hops owned by centeralized service providers.

Instead of providing an email address to a new contact, provide a short textual description of yourself instead. The description can be translated into an IPFS CID for finding your contact's message pathways. The CID made by this application, is the **clear cid**; it identifies a pathway for messages in the clear, introductions.

There is more than one CID per user (two, actually). The second one is derived from your textual self-description and from public keys and signatures as well. The clear cid is included in the construction of the second cid, the **crypto cid**. The crypto cid identifies contact-to-contact **c2c** message pathways.

For a next step, make sure that the process takes place in the P2P realm rather than just in the mutable file sytstem.  This may require introducing a variation on the use of **want lists**. 


## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->
Currently, the contact system uses IPFS in order to create spool directories, user contact lists, manifest pages, and templates. Most file entities have corresponding CIDs which may be used to share the contents with in the IPFS systems. 

User identity is also tied to a CID. Each user has two CIDs with respect to self-descriptive text. One CID, the *clear CID*, results from hashing the text containing a "self-description" as lines of text that a user would be happy to share with anyone - such as a new contact. The new contact may use IPFS to obtain the CID from the text and as such be able to start using the messaging system to send introductory messages to the identity yielding user.

There is a second CID, *crypto CID*, that is the result of hashing the text resulting in the *clear CID* along with crypto key information. The information includes the *clear CID* itself plus a public key made for wrapping AES keys, a public key for verifying sigatures, and a signature of some binary data hepful in idenityfing the user. 

There is no specific requirement on the signed binary data. But, it would preferably be a hash of a biometric marker for the user. (Notes: 1. Tying identity to another block chain application may be useful as a separate process. 2. Providing a represenation of biometric information may ensure that the identity is not spoofed easily by an automatic process before or after the user elects to use the system.)

A good next step for this project will be to create a want list of changes made to a user's spool (inbox) by remote peer users of the application. In particular, a node could write to a particular user's spool locally, using the mutable file system. The new messages will have CID's which can then be put into a change list. 

A pub/sub systems might be used to send a list of spool changes to stable nodes (not likely to churn). The change list could be just a list of CID's identifying new message (and their attachments). While the pub/sub system might move awareness of new messages closer to a user, the user may be off line, in some sense, and may request the total list of changes to his spool at any time.  It would be good, if the user hoping to see his spool could advertise a want list of changes to his spool. 

One might post a want list of entities with the following form:

```
<user CID -- either pathway>-spool
```

The node peers would then go about collecting parts of this list from their peers, with the nearest peers assembling the total want list for the spool owner. When the mail recipient has his total list for his current time frame (with paging in mind), he may then request the data of CID's that are stored in the list and write the data to his local MFS directories.

Quite possibly, much of this stream will be put up for garbage collection along any established routes. But, pinning messages and encrypting messages will stand in the way of bad actors from corrupting the spool. So, some attention should be given to policies having to do with releasing pins after forwarding data.

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->
Prototype requiring progression to a useful application for all. 
## Previews
<!--Add some screenshots to give a preview of your product-->
[Interplanetary Contact at copious.world](https://www.copious.world/interplanetary-contact/)

## Target Audience
<!--Describe who will be your project's users-->
E-mail users and for logging into my site and others like it.
## Rough estimated user base (if applicable)
<!--How many users do you have right now?-->
I have no real users at the moment. If the project is completely P2P, it could replace email, theoretically. So, all email users would be the base. 
## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->
[Interplanetary Contact on GitHub](https://github.com/copious-world/interplanetary_contact)
## Website
<!--Link your website if available-->

[Copious World](https://www.copious.world)

<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->

## Docs
<!--Including a link to your project docs!-->
This project is about one month old. I just started writing the docs.

Please refer to the readme on GitHub and please ask questions.
## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->

### Team Size  
1
### Team members  
Richard Leddy
## How the community can engage
* GitHub Discussion: <!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!-->  
* Email:  rleddy@copious.world
* Slack:  
* Twitter:  
* Discord:  
* Telegram:  
* WeChat:  

## How to Contribute
<!--How can the community contribute to your project?-->
[IPFS community discussion link](https://github.com/ipfs/community/discussions/588)

Become a member of the team. 

This is one project in the making out of several. So, I am trying to find ways to make contributions count across projects.

I am starting the Wiki for this project on GitHub:  
[wiki on GitHub](https://github.com/copious-world/interplanetary_contact/wiki)


