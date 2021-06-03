# GenFT Studio
***An NFT Collection Factory***

## Category
application

## Project Description
GenFT provides a set of simple tools for artists to create collections of generative art NFTs. It has a studio view where an artist sets up the components that will be randomized to create the unique NFTs in the collection.

![image](https://raw.githubusercontent.com/Genft-Studio/genft/cbfe9eca9497fa36c67966cceb7cdfcdc6b44417/media/genome-confirmation-view.png)

Once the parameters of the collection are set up, there is a minting view where patrons can mine and mint NFTs.

![image](https://github.com/Genft-Studio/genft/blob/main/media/mining-view.png?raw=true)

We have built two collection creation tools for visual artists. Our pixel editor tool makes it easy to create NFTs that are visually similar to [MoonCats](https://mooncatrescue.com/) or [Cryotocorgies](https://cryptocorgis.co/corgis). Colors, designs, and overlays are randomly selected at the time of minting. Our second editor allows the artist to upload collections of image layers that are randomly selected at minting time.

![image](https://github.com/Genft-Studio/genft/blob/main/media/6-bit.png?raw=true)

We are experimenting with multiple token economics strategies. The artist will be able to choose the strategy they want to use when they create their NFT collection.

## Use of IPFS, Filecoin and Libp2p
GenFT Studio uses IPFS for three things:
1) The collection 'genome' is stored on IPFS. It defines components and how they will be randomized and assembled by the miner/minter. 
2) When a token is minted, the image and other metadata as stored to IPFS.
3) The webapp is deployed to IPFS and served through public IPFS gateways.

## Project Status
The pixel editor was developed during the NFTHack Hackathon in March, 2021. The image layer editor was developed during Web3Weekend Hackathon in May, 2021. We are currently unifying the code from these projects into a single webapp and deploying it to Rinkeby. There are a few security, efficiency and usability items that we will address before it will be ready for mainnet.

Recently, we have also been talking with a musician who is interested in exploring generative music (aka [Aleatoric music](https://en.wikipedia.org/wiki/Aleatoric_music)) as a medium and wants to help us create a set of tools for musicians.

## Previews
<!--Add some screenshots to give a preview of your product-->
### Mining
![image](https://github.com/Genft-Studio/genft/blob/main/media/mining-view.png?raw=true)

### Minted NFT
![image](https://github.com/Genft-Studio/genft/blob/main/media/example-generated-nft.png?raw=true)

## Target Audience
- Artists who want to experiment generative art as a medium
- Sports Teams
- Corporations

## Rough estimated user base (if applicable)
¯\_(ツ)_/¯

## Github repo
- [Generator for layered image fragments](https://github.com/Genft-Studio/genft)
- [Generator for pixelated NFTs](https://github.com/Genft-Studio/six-bit)

## Website
[Website ***coming soon***](https://genft.studio)

### Hackathon Submissions
- [Web3Weekend Submission](https://showcase.ethglobal.co/web3weekend/nft-factory-factory)
- [HackNFT Submission](https://showcase.ethglobal.co/nfthack/generative-art-nfts-with-gashapon)

## Docs
<!--Including a link to your project docs!-->
- [Generator for layered image fragments](https://github.com/Genft-Studio/genft)
- [Generator for pixelated NFTs](https://github.com/Genft-Studio/six-bit)

## Team Info

### Team Size
2

### Team members
#### Morgan Sherwood
Morgan was an early and enthusiastic adopter of decentralized technology, and has lived and breathed crypto for more than five years. Morgan quickly established a strong reputation in the blockchain industry by authoring a number of successful automated trading bots, and “writing software that makes everyone money,” including for MakerDAO. These early wins gave Morgan the opportunity to give up his day job and focus on hacking solidity and building smart contract security tools for crypto developers full-time. Morgan has degrees in computer science and philosophy from the University at Albany. More recently, Morgan helped co-found [Endowl](https://endowl.com).

#### Ken Hodler
After becoming an early adopter of cryptocurrency in 2011, Ken was the CTO at KeepKey, where he led development of the critically acclaimed KeepKey hardware wallet. He is working toward his MSc in Digital Currency at the University of Nicosia and helping re-imagine [digital estate planning at Endowl](https://endowl.com).

## How the community can engage
* GitHub Discussion: https://github.com/ipfs/community/discussions/569
* Email: ***coming soon***
* Twitter: @GenFTStudio
* Discord: https://discord.gg/qcxj2eUR

## How to Contribute
<!--How can the community contribute to your project?-->
We'd love to hear your ideas on what features you'd like to see in GenFT Studio. If you have thoughts about how we can improve our current MVP, please let us know in the [IPFS Community Discussion Forum](https://github.com/ipfs/community/discussions/569) or join our [Discord](https://discord.gg/qcxj2eUR) server.

We have an open [Gitcoin Grants](https://gitcoin.co/grants/2390/genft-studio) Project. GR-10 starts on 16 June, 2021. Please consider tossing a few DAI or GWEI our way.

Our source code is open source and we are happy to receive pull requests on Github.
