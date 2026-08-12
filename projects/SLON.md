## SLON - digital reputation for responsible recomendation creation

## Category 
Application; reputation managing; education, HR

## Project Description
Reputation is the cornerstone of economic life and is essential for the fast growth. Recommendation letters is a well-known decentralized approach to manage reputation that has proven to be effective and stable for more than centuries.

A referee issues recommendation about a worker that can be shown to an employer during interview.
Unfortunately such traditional recommendation letter lacks responsibility of the referee. An evil referee can issue a fake recommendation that will damage the employer. This fact limits usage of recommendations during hiring and leads to an excess of time that workers and HR specialists spend on job interviews: the same skills are reexamined multiple times in different companies just because employers can't fully trust referees.

I propose to split a person's reputation on two parts to solve this problem and make recommendations fake resistant. 

The reputation of a person should consist of two parts:

- Electronic recommendations letters issued about the person, backed by referees SLON balance
- SLON token balance of the person as a referee

With such approach employer can slash SLON tokens of evil referee if a worker lacks skills mentioned in a recommendation letter. Employer can sell such SLON tokens on an open market to compensate HR specialist time lost for reexamining of fake recommendation.

The proposed system is resistant to Big brother surveillance and any discrimination:

- All recommendation letters are stored privately on personal devices and showed only to organizations that the person trust
- SLON token balance doesn't show if person is good or bad, accounts are anonymous and a person can have multiple accounts to store SLON tokens.

## Use of IPFS, Filecoin and Libp2p
Recommendation letters are stored in a decentralized way with IPFS.

## Project Status
Beta

## Previews
#### As a referee

- Select a referee's account from the account selector (right top corner). We selected ALICE.
- Tap the "Referee tab"
- Type text of a recommendation letter, paste a public key of worker and an amount of token to stake on the recommendation.
- Click the "Create" button.

<table><tbody><tr><td><img alt="1 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/1.png?raw=true" width="500"></tr></td></tbody></table>

- Show the QR code to the worker (or take a photo / screenshot of the QR code to show later, for example, if you test this repo from a single computer you will need this QR code on the next step)

<table><tbody><tr><td><img alt="2 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/2.png?raw=true" width="500"></tr></td></tbody></table>

#### As a worker

- Select a worker's account from the account selector (right top corner). We selected BOB.
- Tap the "Worker tab" and then the "Add letter about me" button

<table><tbody><tr><td><img alt="3 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/3.png?raw=true" width="500"></tr></td></tbody></table>

- Scan the QR-code that the referee showed to you

<table><tbody><tr><td><img alt="4 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/4.png?raw=true" width="500"></tr></td></tbody></table>

- See that the letter was uploaded to your account

<table><tbody><tr><td><img alt="5 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/5.png?raw=true" width="500"></tr></td></tbody></table>

- Tap on the recommendation letter to show it to an employer
- If the employer wants to re-examine your skill mentioned in the letter, paste the employer's public key and tap the "Sign" button

<table><tbody><tr><td><img alt="6 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/6.png?raw=true" width="500"></tr></td></tbody></table>

- Show the QR code to the employer (or take a photo / screenshot of it to show later, for example, if you test this repo from a single computer you will need this QR code on the next step)

<table><tbody><tr><td><img alt="7 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/7.png?raw=true" width="500"></tr></td></tbody></table>

#### As an employer

- Select an employer account from the account selector (right top corner). We selected BOB_STASH.
- Tap the "Employer tab" and then the "Scan a letter about a worker" button

<table><tbody><tr><td><img alt="8 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/8.png?raw=true" width="500"></tr></td></tbody></table>

- Scan the QR-code that the worker showed to you

<table><tbody><tr><td><img alt="9 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/9.png?raw=true" width="500"></tr></td></tbody></table>

- See that the worker recommendation letter was uploaded to your account

<table><tbody><tr><td><img alt="10 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/10.png?raw=true" width="500"></tr></td></tbody></table>

- Have a look at account balances: the referee (ALICE) and the employer (BOB_STASH) all have the same balance of 1.1529 MUnit

<table><tbody><tr><td><img alt="11 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/11.png?raw=true" width="500"></tr></td></tbody></table>

- If the employer thinks that the recommendation was fake and wants to get a reimbursement from the referee then he taps on the letter and then pushes "Get a reimbursement" button

<table><tbody><tr><td><img alt="12-1 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/12-1.png?raw=true" width="500"></tr></td></tbody></table>

- The transaction goes to a blockchain

<table><tbody><tr><td><img alt="12-2 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/12-2.png?raw=true" width="500"></tr></td></tbody></table>

- Balances will be updated: 0.001 MUnit will be transferred from the referee (ALICE) to the employer (BOB_STASH) as the result of reimbursement transaction

<table><tbody><tr><td><img alt="13 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/13.png?raw=true" width="500"></tr></td></tbody></table>

- After it the recommendation letter will be marked as "Canceled"

<table><tbody><tr><td><img alt="14 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/14.png?raw=true" width="500"></tr></td></tbody></table>

- And can't be used twice for penalization of the referee

<table><tbody><tr><td><img alt="15 step" src="https://github.com/slonigiraf/recommendation-letter-example-ui/blob/main/ui-examples/15.png?raw=true" width="500"></tr></td></tbody></table>

## Target Audience
Employers, workers, teachers, professors, students.

## Rough estimated user base (if applicable)
> 1000

## Github repo
https://github.com/slonigiraf/slon-ui

## Website
[Web2 MVP](https://slon-i-giraf.ru/app/work?language=ENG)

## Docs
[Whitepaper](https://github.com/slonigiraf/slon-whitepaper/blob/main/ENG.md)

## Team Info

### Team Size  
1 person full time

### Team members  

- **Reshetov Denis:** Founder, Rust/JavaScript developer.
- **Contact Name:** Denis Reshetov
- **Contact Email:** reshetovdenis@gmail.com

## How the community can engage
* GitHub Discussion: [https://github.com/ipfs/community/discussions/755](https://github.com/ipfs/community/discussions/755)
* Email:  reshetovdenis@gmail.com
* Twitter:  https://twitter.com/slonigiraf
* Telegram:  https://t.me/slonigiraf

## How to Contribute
- [Start using a game](https://slon-i-giraf.ru/app/work?language=ENG) for school / university / corporate education.
- Get SLON tokens for free: https://t.me/slonigiraf
