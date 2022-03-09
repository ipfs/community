## Project Name <!-- Add your project name here with format "Project Name"-->
py-is_ipfs

## Category 
<!--developer tooling, application, wallet, infrastructure, etc-->
developer tooling, IPFS, Python library

## Project Description
<!--Describe your project in a few sentences. -->
My first encounter with IPFS was through NFT's and looking into how projects host (im)mutable metadata and images. I soon realised a lot of projects used centralised methods instead of decentralised alternatives like IPFS. While contributing to [HonestNFT Shenanigan Scanning Tools](https://github.com/Convex-Labs/honestnft-shenanigans) I needed a way to label NFT's as centralised or not. What started out with a simple heuristic as `link contains ipfs` turned into `link includes a valid CID`. 

But I now realise we need better heuristics that can detect all possible IPFS links, hashes, domains, ... Ideally a "one way" method to say, *"Yes, this link is valid and points to a decentralised storage method"*.

I researched existing libraries and scripts, but found no comprehensive method in Python. There are some (limited) alternatives in other languages, but a Python implementation would be a good addition to the community tools.

## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->
I envision leveraging existing related projects and published specs to build upon in this new Python library.

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->
Brainstorming/ideation phase and some rough unpublished scripts for testing methods.
## Previews
<!--Add some screenshots to give a preview of your product-->
```python
import is_ipfs

is_ipfs.is_CID("QmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU") # True
is_ipfs.is_CID("bafybeierhgbz4zp2x2u67urqrgfnrnlukciupzenpqpipiz5nwtq7uxpx4") # True
is_ipfs.is_IPFS_URL("https://ipfs.io/ipfs/QmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU") # True
```
## Target Audience
<!--Describe who will be your project's users-->
Ranging from users with limited coding experience up to professional developers.

<!-- ## Rough estimated user base (if applicable)
How many users do you have right now?-->

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->
https://github.com/Barabazs/py-is_ipfs

<!--## Website
Link your website if available-->

<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->

<!--## Docs
Including a link to your project docs!-->

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->
I'm a (FL)OSS enthusiast working as a solo developer. I'm currently focusing on empowering end-users in the NFT space to prevent and detect unfair projects or blatant scams.
### Team Size  
1
### Team members  
[Barabazs](https://github.com/Barabazs)

## How the community can engage
* GitHub Discussion: https://github.com/Barabazs/py-is_ipfs/discussions/1 
* Twitter: twitter.com/barabazs_

## How to Contribute
<!--How can the community contribute to your project?-->
In the first stage of the project I want to release a beta version.
The community can then test it however they want and contribute with issues, code reviews, pull requests or discussing ideas.
