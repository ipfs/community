## Project Name <!-- Add your project name here with format "Project Name"-->

ipfs-chat

## Category 

<!--developer tooling, application, wallet, infrastructure, etc-->

Application

## Project Description
<!--Describe your project in a few sentences. -->

Real time, end-to-end encrypted, p2p messenger using go-IPFS-Pubsub. Allows private messaging & secure in-chat file/directory sharing. Server/broker-less (viz. no signaling/rendezvous server needed). Works over both LAN and internet (uses built-in NAT-traversal, if needed).

## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->

Nodes discover peers primarily by querying the DHT for providers of a time-based rendezvous file. Every node also resolves the same libp2p-keys over IPNS-Pubsub to prime the swarm. Uses IPFS-Pubsub both for the chatroom and further peer discovery. Uses IPNS over Pubsub for peer authentication.

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->

Beta.

## Previews
<!--Add some screenshots to give a preview of your product-->

![ipfs-chat-screen](https://github.com/SomajitDey/ipfs-chat/raw/main/screenshot.png)

## Target Audience
<!--Describe who will be your project's users-->

Anyone who needs a demonstrably secure and anonymous p2p-chat and file-sharing app. IRC lovers might find this highly relatable. It's also easy to install for those who care about it.

## Rough estimated user base (if applicable)
<!--How many users do you have right now?-->

There's no way to track the total number of current users. All that we know are the following stats. 

As of Thu Nov 11 07:55:30 UTC 2021:

- [GitHub stars](https://github.com/SomajitDey/ipfs-chat/stargazers): 35
- [GitHub forks](https://github.com/SomajitDey/ipfs-chat/network/members): 3
- Github clones (as obtained from GitHub Insights > Traffic) : 1197
- Upvotes received in [reddit](https://www.reddit.com/r/ipfs/comments/p6u8u1/terminalbased_secure_chatrooms_using_goipfs_cli/?utm_source=share&utm_medium=web2x&context=3): 43
- Views in [discuss.ipfs.io](https://discuss.ipfs.io/t/terminal-based-chat-app-using-go-ipfs-pubsub-no-rendezvous-server-needed/11888): 161 (and a ❤)

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->

https://github.com/SomajitDey/ipfs-chat

## Website
<!--Link your website if available-->

<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->

## Docs
<!--Including a link to your project docs!-->

https://github.com/SomajitDey/ipfs-chat/blob/main/README.md

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->

### Team Size  

1

### Team members  

[Somajit Dey](https://github.com/SomajitDey)

## How the community can engage
* GitHub Discussion: <!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!-->  
  1. https://github.com/ipfs/community/discussions/687 
  2. https://github.com/SomajitDey/ipfs-chat/discussions
* Email:  
* Slack:  
* Twitter:  
* Discord:  
* Telegram:  
* WeChat:  

## How to Contribute
<!--How can the community contribute to your project?-->

https://github.com/SomajitDey/ipfs-chat#contribute
