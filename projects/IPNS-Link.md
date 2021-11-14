## Project Name <!-- Add your project name here with format "Project Name"-->

IPNS-Link

## Category 

<!--developer tooling, application, wallet, infrastructure, etc-->

Webhosting

## Project Description

<!--Describe your project in a few sentences. -->

**[IPNS-Link](https://github.com/ipns-link/specs)** makes even dynamic websites and local servers addressable using IPNS. For secure webhosting one no more needs a public IP, domain name and SSL certificate(s). Other benefits include anonymity and censorship resistance.

## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->

The project uses IPFS, IPNS (over Pubsub), DNSLink, Libp2p and AutoRelay.

1. Every website (static or dynamic) is addressed by an IPNS-name. The site-owner holds the corresponding Libp2p key-pair which helps her port the entire site to another machine seamlessly.
2. Http proxying is done over p2p streams.
3. IPFS is used to serve some content more efficiently. Such as static images, css and javascripts in an otherwise dynamic site, HLS streams etc.
4. AutoRelay is used for NAT traversal if needed.
5. DNSLink is used for disseminating the IPFS CID of a `.ipns` registry which maps long IPNS-names to short human-friendly `*.ipns` names.

## Project Status

<!--brainstorming, fundraising, under development, beta, shipped, etc-->

Partially implemented [prototypes](https://github.com/ipns-link/specs#any-implementations-yet) released. Full [specs](https://github.com/ipns-link/specs) available. Fundraising - funds required to host public gateways, public relays, `.ipns` registry and also to attract developers.

## Previews
<!--Add some screenshots to give a preview of your product-->

https://www.ipns.live

## Target Audience
<!--Describe who will be your project's users-->

- Developers, students, hobbyists, tinkerers and journalists. Anybody who needs hassle-free, uncensorable, self-hosting for whatever reason.
- Geo-restricted or otherwise blocked websites. IPNS-Link presents an alternate portal to those sites.
- Giant corporations with lots of origin servers. IPNS-Link makes things more efficient.
- Shared hosting providers. IPNS-Link makes changing hosting providers seamless.
- People seeking anonymity while browsing. IPNS-Link can keep end-users and origin-servers anonymous.

## Rough estimated user base (if applicable)
<!--How many users do you have right now?-->

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->

https://github.com/ipns-link

## Website
<!--Link your website if available-->

<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->

https://www.ipns.live

## Docs
<!--Including a link to your project docs!-->

https://github.com/ipns-link/specs

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->

### Team Size  

4

### Team members  

[@SomajitDey](https://github.com/SomajitDey) - Lead

[@rinzler100](https://github.com/rinzler100) - Testing

[@ch4itu](https://github.com/ch4itu) -  Finance

[@SayantaniBris](https://github.com/SayantaniBris) - Cloud management

## How the community can engage
* GitHub Discussion: <!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!-->  

1. [[Ecosystem\] IPNS-Link · Discussion #691 · ipfs/community (github.com)](https://github.com/ipfs/community/discussions/691)
2. https://github.com/ipns-link/contribute#join-the-community

* Email:  [contact@ipns.live](mailto:contact@ipns.live)
* Slack:  
* Twitter:  
* Discord:  
* Telegram:  
* WeChat:  

## How to Contribute
<!--How can the community contribute to your project?-->

[ipns-link/contribute: Contribute to IPNS-Link (github.com)](https://github.com/ipns-link/contribute)

