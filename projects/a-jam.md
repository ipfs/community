# Project a-jam

## Category 
<!--developer tooling, application, wallet, infrastructure, etc-->
music, creative, culture

## Project Description
<!--Describe your project in a few sentences. -->
This is a decentral web app for musicians who want to exchange and build on their musical ideas with their friends on web3.
 
It allows you, to record a track on your mobile phone or computer. You can then play back previous recordings and at the same time record another track on top. For example you could first play a riff and then add a solo in the second recording. 

You can share the project anytime with your friends and they can add further tracks (e.g. a vocal track, percussion or a synthie). Your friends can then send it back to you or distribute it further to their friends.

This way, a-jam enables you to have asynchronous jam sessions with your fellow musicians. 

## Use of IPFS, Filecoin and Libp2p
<!-- Describe how your project uses any or all of these technologies, and why. -->

The web app is hosted on IPFS and it spins up a js-ipfs node that is used for file retrieval and file storage.

When a user publishes a project, the project meta data and all the audio recordings are stored on IPFS. A url for sharing is generated, which points to the decentral web app and includes the cid of the project meta data file.  

If you open the link, the project and all associated recordings are loaded from IPFS. 

## Project Status
<!--brainstorming, fundraising, under development, beta, shipped, etc-->
A usable version is already online ([links below](#Website)).

## Previews
<!--Add some screenshots to give a preview of your product-->
<img src="https://raw.githubusercontent.com/felixniemeyer/a-jam/main/screenshots/home.png" height="450">  <img src="https://raw.githubusercontent.com/felixniemeyer/a-jam/main/screenshots/session.png" height="450">

There is a [showcase video on youtube](https://www.youtube.com/watch?v=wvKVnK90p0c)

## Target Audience
<!--Describe who will be your project's users-->
musicians, creatives

## Rough estimated user base
<!--How many users do you have right now?-->
I have already been using the app with some of my friends.  

## Github repo
<!--Attach a link to your GitHub repo - open source is required - please make sure your repo has a license file and is licensed using MIT open source license! -->
[felixniemeyer/a-jam](https://github.com/felixniemeyer/a-jam)

## Website
<!--Link your website if available-->

<!--If you're applying for a Next Step grant, add the URL to your hackathon submission here also-->
- Public IPFS gateway: [https://gateway.ipfs.io/ipns/k5...](https://gateway.ipfs.io/ipns/k51qzi5uqu5dgggo67rgyka2qo75vrsylw2idc3j6f570kthbikc8yuzyavflf)
- If you have the unstoppable domains browser extension [a-jam.crypto]() works for you
- If your browser supports IPFS or if you have IPFS companion installed you can open the app with this link:  `ipns://k51qzi5uqu5dgggo67rgyka2qo75vrsylw2idc3j6f570kthbikc8yuzyavflf`

## Docs
<!--Including a link to your project docs!-->
not applicable

## Team Info
<!-- Introduce your amazing team - how many team members are working on this project and who are they?-->
Currently it's only me working on it. I am in conversation with other developers who are interested in contributing. I hope to be working on this with other people soon :-)

### Team Size  
1 .. for now!

### Team members  
[Felix Niemeyer](https://github.com/felixniemeyer)

## How the community can engage
* GitHub Discussion: <!--Start a discussion with the community here: https://github.com/ipfs/community/discussions/new and attach the link!-->  
* Email: niemeyer.felix@gmail.com 
* Discord: pupadupa#6421

## How to Contribute
<!--How can the community contribute to your project?-->
Engage in the (project discussion)[https://github.com/ipfs/community/discussions/564]

At the moment I would welcome expertise about how to provide better availability until the files have propagated a bit through the network.

There is a file called "issues" in the repository root. 
If you spot something you'd like to work on don't hesitate to get in touch. 

Also, if you have any ideas or proposals, or if you just want to say hi, feel free contact me! :-)