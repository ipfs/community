## Project Name <!-- Add your project name here with format "Project Name"-->

Ownft

## Category 
<!--developer tooling, application, wallet, infrastructure, etc-->

Hardware, IPFS, NFT, Application

## Project Description
<!--Describe your project in a few sentences. -->

This project provides one solution to the problem of data longevity for content tied to NFT tokens. With an IPFS hash, content is available on the network as long as it is cached by some peer, or pinned by another. If a file has no pins and is not cached on any nodes (cleaned up via garbage collecting), then the content eventually becomes unavailable. 

Several alternative solutions exist, such as dedicated 3rd party pinning services and Filecoin-backed incentivization systems. 

We developed an easy to use self-hostable IPFS-backed software stack, that runs on a low-power, cheaply available computing device - the Raspberry Pi. 

With this stack, NFT collectors have guaranteed data availability, provided by the locally running IPFS node. They also get a personalized view into their collection. The stack is geared towards Zora-based NFTs, so collectors are able to seamlessly participate in the Zora marketplace from the same self-owned UI. 

## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->

The project uses go-ipfs for ARM processors to run a local IPFS node on a Raspberry Pi. Then, a web server written in Node.JS serves an endpoint that the UI uses to fetch NFT tokens belonging to the user, and automatically pins hashes found in the contentURI fields. 

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->

This project is currently under development and in the MVP stage.

## Previews
<!--Add some screenshots to give a preview of your product-->

|       |       |
|------------|-------------|
| <img src="https://imgur.com/NlA8083.png" width="250"> | <img src="https://imgur.com/voXX6Fo.png" width="250"> |
| <img src="https://imgur.com/DSei9Mu.png" width="250"> | <img src="https://imgur.com/7zZoiYL.png" width="250"> |

## Target Audience
<!--Describe who will be your project's users-->

- NFT collectors
- User's who want to self-host their NFT content

## Rough estimated user base (if applicable)
<!--How many users do you have right now?-->

Our hardware + software stack is currently under development so we do not have any users

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->

https://github.com/sha256rma/ownft_v2

## Website
<!--Link your website if available-->

The application is still under development so the website is not hosted publicly at the moment

## Docs
<!--Including a link to your project docs!-->

https://github.com/sha256rma/ownft_v2/blob/master/README.md

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->

### Team Size

4

### Team members

Kartikeya
- full-stack developer
- computer science graduate
- https://github.com/sha256rma

Taehun
- back-end developer / business
- entrepreneurship major graduate
- https://github.com/kevtae

Denny
- front-end developer
- computer science student
- https://github.com/denny999222

Amit
- front-end developer
- Information Technology major student
- https://github.com/akumar1999


## How the community can engage
* Email: ksharma@dype.market
* Discussion: https://github.com/ipfs/community/discussions/550

## How to Contribute
<!--How can the community contribute to your project?-->
Reach out to us and we can contribute together! We are still learning about Blockchain and look forward to community engagament in the future :)
