## Project Name <!-- Add your project name here with format "Project Name"-->
Dungeon Crawler

## Category 
<!--developer tooling, application, wallet, infrastructure, etc-->
NFT, Blockchain Gaming, Dapp, marketplace, IPFS application, metadata, ENS domain, IPFS hosting, Dao, marketplace

## Project Description
<!--Describe your project in a few sentences. -->

Dungeon Crawler is an awesome RPG dungeon adventure game built with phaser3, that interacts with Ethereum Blockchain using MetaMask and powered by Chainlink VRF, Aggregator and IPFS! We've built a one of a kind RPG game that interacts with blockchain networks. 
1. Users have three lives, and there are a ton of monsters, traps in the game which are to be avoided, users have a weapon as well. Enemies and monsters can be killed with knives and chests can be collected in the game. The chests directly transfer the Dungeon coins which are ERC20 tokens to the user's wallet. 
2. In order to win the game, the user has to find and collect the LINK token which is somewhere on the map protected by an evil angel.
3. On successfully clearing the game by getting the LINK token a user is rewarded with **NFT** which is minted with help of Chainlink VRFs. These NFTs serve as rewards and level-pass for the next level in the game.
4. All the minted NFTs and metadata are stored on IPFS(we are planning to develop with Filecoin storage) using the token URI.
5. The user has a trophy cabinet where the rewards earned can be viewed and which are required for access to the next level.
6. Dungeon Crawler has a DAO as well where the open community can contribute to the game. Artists/NFT-creators can contribute to the platform with assets like game characters, maps, monsters, etc. by filling the forms with specific requirements and wallet address which is displayed on the game dashboard.
7. Players can upvote the maps, scenarios, and characters for the game by using their dungeon coin. 
8. On a particular epoch we calculate the highest voted character and transfer the amount of dungeon token to the creator/artist/illustrator.

***Tips : To go through the door user need to find a key that can be obtained by helping the wizard and killing the evil angel and get to the LINK token gate.***



## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->
***How do we plan to use IPFS and Filecoin?***
We can always store all your metadata on-chain (in fact, that’s the only way for your tokens to interact), but a lot of NFT marketplaces don’t know how to read on-chain metadata yet. Using the off-chain metadata to visualize your token, while having all the on-chain metadata is ideal so your tokens can interact with each other. Currently, we have created a mapping of image data stored on IPFS node and these images are then mapped to the NFTs randomly. 

The name, attributes, and details of NFTs are easy to store on-chain, but the image of the NFT is the hard part. Also, where do we store this API for the tokenURI? A lot of people choose to run servers to host the information, which is great, but it is a centralized place for visualizing the token. It would be better if we could store our images on-chain so that they can’t go down or get hacked. It’s also really easy to add an image onto IPFS and doesn’t require running a server!

**We are brainstorming ways to plan to use IPFS and Filecoin cloud storage, to pin metadata to the IPFS using automated scripts and then we can generate NFTs as rewards by getting image data from the IPFS mapped to the tokenURI. We also plan to store off-chain data like the images Stories/legends contributed by the NFT-creators, and upvote count on the IPFS-Filecoin backend. We also need to research ways to tackle gas fees**

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->
We've hacked throughout the Chainlink Virtual Hackathon Spring 2021, and our idea is 60 per cent implemented. We plan to transform the idea to the next level using IPFS and Fielcoin and make the maximum use of this opportunity.

## Previews
<!--Add some screenshots to give a preview of your product-->
![gameplay](https://github.com/Sagar133/RPG-Solidity-Game/blob/master/blockchain/src/assets/gamescreen.png)
![gameplay2](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/monsters.png)

The workflow:
![diagram](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/diagram.jpg)

NFT Invenory
![nft](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/nft.png)

We created a marketplace where players upvote their favourite legends/characters/maps made by NFT-creators and artists. We will use the power of IPFS/filecoin to take it to the next level.
| selection | Hero | Story | 
| --- | --- | --- | 
| ![1](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/selection.png) | ![2](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/heroes.png) | ![3](https://github.com/Sagar133/RPG-Solidity-Game/blob/elio-blockchain/blockchain/src/assets/story.png)|  |

## Target Audience
<!--Describe who will be your project's users-->
Gamers, Open Community, NFT artists, collectors and investors, Governance token investors, NFT curators etc

## Rough estimated user base (if applicable)
<!--How many users do you have right now?-->
We are in the process of developing the project. But our target audience would be the gaming community and the people watching games-streaming on Twitch and RPG fans, NFT artists and creators and the open community.

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->
[https://github.com/Sagar133/RPG-Solidity-Game](https://github.com/Sagar133/RPG-Solidity-Game)

## Website
<!--Link your website if available-->
We aim to host the project soon! Currently, the project is deployed on the Rinkeby network.

## Docs
<!--Including a link to your project docs!-->
[Our documentation](https://github.com/Sagar133/RPG-Solidity-Game/blob/master/README.md)

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->

### Team Size  
We are a team of 5 developers

### Team members  

[Sagar Behara](https://github.com/sagar133/)  email: sagarbehara13@gmail.com 
- Professional Blockchain Engineer at MahaDAO
- Project Lead
- Solidity smart contracts and game developer

[Elio Jordan Lopes](https://github.com/lopeselio/) email: lopeselio@gmail.com
- Junior at Vellore Institute of Technology, India
- Project Manager
- Smart contracts and React developer and marketing

[Rishab Keshan](https://github.com/rishabhkeshan/) email: rishabhkeshan@gmail.com
- Sophomore at Vellore Institute of Technology, India
- Full Stack MERN developer

[Ramesh Sachan](https:github.com/holps-7/) email: master.ramesh96@gmail.com
- Junior at Vellore Institute of Technology, India
- Full Stack developer


[Gokul J Kurup](https://github.com/madrigal1/) email: kurupgokul11@gmail.com
- Sophomore at Vellore Institute of Technology, India
- Full Stack developer


## How the community can engage
* GitHub Discussion: [Dungeon Crawler Discussion](https://github.com/ipfs/community/discussions/517)<!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!-->  
* Email:  lopeselio@gmail.com
* Slack:  N/A
* Twitter:  [@DungeonCrawle13](https://twitter.com/DungeonCrawle13)
* Discord:  N/A
* Telegram:  [Join Dungeon Crawler Telegram](https://t.me/joinchat/yClr8VGX2gE1ZDc1)
* WeChat:  N/A

## How to Contribute
<!--How can the community contribute to your project?-->
We are open to get ideas and contributions from IPFS community about ideas that how DAO for our in-game NFT marketplace can work well.
