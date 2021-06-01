## Project Name <!-- Add your project name here with format "Project Name"-->
NFT import 

## Category <!--developer tooling, application, wallet, infrastructure, etc-->
Tooling, WordPress plugin 

## Project Description <!--Describe your project in a few sentences. -->
NFT import is a WordPress Plugin allowing to import your NFTs in your WordPress media library, to include them in your website

## Use of IPFS, Filecoin and Libp2p <!-- Describe how your project uses any or all of these technologies, and why. -->
Import your NFTs images already stored in IPFS.

Complementary to existing Kredeum NFTs WordPress plugin, that makes the other way: archive to IPFS and Mint NFTs.

Achieving "sort of" import/export functionnality between WordPress and IPFS/NFTs

## Project status <!--brainstorming, fundraising, under development, beta, shipped, etc-->
Project started during ETHGlobal Web3WeekEnd Hackathon.

Done: subgraph retreiving NFTs with **IPFS metadata** (extracting CID from tokenURI) from whatever eth network (mumbai/matic done).

That allows to browse very easily any NFTs you own, on whatever blockchain... after deploying the subgraph to the network

To be done : all the WordPress Plugin side, store the IPFS files retreived with the subgraph to the WordPress media Library


## Previews
<!--Add some screenshots to give a preview of your product-->

Subgraph preview : 
https://thegraph.com/explorer/subgraph/zapaz/eip721-mumbai

With this query :  
{ tokens(first:9 where:{metadata_not:""}) { id tokenURI name description image metadata } } 

![Subgraph preview](https://storageapi.fleek.co/zapaz-team-bucket/web3weekend/capture.png)

WebPage listing latest mumbai NFTs using this subgraph : 
https://storageapi.fleek.co/zapaz-team-bucket/web3weekend/index.html 

## Target Audience <!--Describe who will be your project's users-->
WordPress editors : photographs, artists, e-commerce, journalists, blogger...

## Rough estimated user base (if applicable)
WordPress is 40% of all web2 sites worldwide, possible target of hundred thousands editors 
<!--How many users do you have right now?-->

## Github repo <!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->
https://github.com/Kredeum/ethglobal-web3

## Website
https://www.kredeum.com 
<!--Link your website if available-->

https://showcase.ethglobal.co/web3weekend/nfts-import
<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->

## Docs
Humm, not that much yet...
<!--Including a link to your project docs!-->

## Team Info <!-- Introduce your amazing team - how many team members are working on this project and who are they?-->
Kredeum is a team of 5 associates founded early 2021, we have participated in some Hackathons

We mainly won prizes with:
- Aave FlashLoans at MarketMake
- Kredeum NFTs pugin at GR9: 1st prize from Polygon + Framework Support Prize from Protocol Labs :-)

### Team Size  
5 people

### Team members
Alain Papazoglou

Yoann Lesouef

Alexandre Roullier

## How the community can engage <!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!--> 
* GitHub Discussion:  https://github.com/ipfs/community/discussions/567
* Email:  contact@kredeum.com
* Twitter:  https://twitter.com/kredeum
* Discord:  https://discord.gg/D7Zy4VBzYz

## How to Contribute
<!--How can the community contribute to your project?-->
Support with NFT Storage

Standardization process around immutable storage of NFT metadata and images
