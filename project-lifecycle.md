# Protocol Labs Project Lifecycle

* Outline
  * Active States
    * L0: Prototype
    * L1: “In Org”
    * L2: Contributors Welcome!
    * L3: Growth
    * L4: Top Project
    * L5: Flagship Project
  * Inactive States
    * D0: Actively Maintained
    * D1: Critical Fixes Only
    * D2: Hard Deprecated

## Lifecycles and API Stability

For the most part, a project’s place in the lifecycle does not describe it’s API stability. 
API stability is required once enough people depend on that API and can’t always be planned for.

However, it is assumed that once a project reaches L3 the project is actively soliciting 
users and is dedicated to supporting them by not breaking API unless absolutely necessary. 
Similarly, API changes should not happen in inactive states as we are no longer soliciting 
users and are only investing to the extent that people already depend on them.

## L0: Prototype

*Examples: proto.school*

During the initial stages of development projects exist either on developer’s personal GitHub 
accounts or in specific orgs like shipyard that are intended to house experimental development 
and demo’s.

At this stage, attention is a liability, and providing a nice website, good documentation, 
or other promotion would only bring unwanted attention too early.

## L1: “In Org”

*Examples: interface-ipld*

When projects are moving into relevant PL orgs they are expected to have:

* Guaranteed test coverage at a reasonable level.
* TBD: other automation.

## L2: Contributors Welcome!

*Examples: peerpad*

At this stage the project is ready to solicit additional contributors from 
the community. It should expect.

* Occasional features in the newsletter and in social media.
* Community Engineering Support:
  * Issue Triage and cleanliness
  * TBD: other automation.

## L3: Growth

*Examples: dag-cbor, js-libp2p*

At this stage the project is ready to solicit many more users and dependents than it currently has. 
It should expect:

* Frequent features in the newsletter and in social media.
* Featured talks and videos in YouTube channel.
* Content Creation: workshops, tutorials, documentation, conference talks.

## L4: Top Project

*Example: js-ipfs, go-ipfs*

At this stage the project has reached a level of maturity in users and community that we feature it often.

* Frequent talks and workshops at our events.
* Featured spot in the GitHub org (if available).

## L5: Flagship Project

*Examples: libp2p, IPFS, IPLD*

Most project repositories do not reach this point. This status is reserved for broader “project” contexts. 
Projects should expect:

* Fancy website
* Dedicated social media accounts

## D0: Actively Maintained

*Examples: dag-protobuf*

This status is for libraries we still maintain and possibly even rely on but have already made a strategic 
decision to move away from.

## D1: Critical Fixes Only

We’ve deprecated our own use to the extent that we can and encourage the community to do the same.

## D2: Hard Deprecated

Using this library is actively harmful.
