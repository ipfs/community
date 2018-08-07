# IPFS Licensing Policy

In order to ensure an open source project is actually open and re-usable in a legal sense, it’s critical that licensing information is clear. Repositories in the `ipfs`, `libp2p`, and `ipld` organizations should all follow this policy for licensing their contents.

Unless there is a particular reason to use a different licensing structure, please use the following for new projects:

1. Copyright should always be assigned to **Protocol Labs, Inc.,** regardless of the type of license. (In an ideal future, we can assign copyright to a foundation, but Protocol Labs is the best usable legal entity we have now.)

2. All software code should be licensed under the MIT license. Canonical license text for the MIT license can be found in this repository’s [`LICENSE` file](../LICENSE) or at the [Open Source Initiative website](https://opensource.org/licenses/MIT).

2. All documentation and non-code resources (e.g. logos and imagery) should be licensed under the Creative Commons Attribution 4.0 International (CC BY 4.0) license. An [easy-to-read, linkable description](https://creativecommons.org/licenses/by-sa/4.0/) and canonical license text in [HTML](https://creativecommons.org/licenses/by/4.0/legalcode) and [plain text](https://creativecommons.org/licenses/by/4.0/legalcode.txt) can be found at the Creative Commons website.

    If a repository is a software project with some built-in docs or resources (e.g. `go-ipfs`), it can all be licensed under the MIT license. The CC BY license is meant for projects that are not overwhelmingly code, such as websites, guidance, discussion repos, and so on.


## Attaching a License

When licensing a project, be sure to:

1. Name the the license and provide a link to it from the project README under the heading “license.” Example:

    ```md
    ## License
    
    Copyright (c) Protocol Labs, Inc. under the **<LICENSE NAME>**. See [LICENSE file](./LICENSE) for details.
    ```
    
    Or for multiple licenses:
    
    ```md
    ## License
    
    All software code is copyright (c) Protocol Labs, Inc. under the **MIT license**.
    
    Other written documentation and content is copyright (c) Protocol Labs, Inc. under the **Creative Commons Attribution License**.
    
    See [LICENSE file](./LICENSE) for details.
    ```

2. For software that will be redistributed, the full text of the license(s) **must** be in a file named `LICENSE` in the repository root. Other projects **should** do this, too, but their readmes can alternatively link to a separate license document, like this: [Creative Commons Attribution](https://creativecommons.org/licenses/by/4.0/).


## Contributor Licensing (DCO)

We manage contributor licensing via a *Developer Certificate of Origin (DCO).* All commits with new code from any contributor **must** include a DCO signoff trailer. See the [contributing guide part 2](../CONTRIBUTING-2.md#a-license-and-a-signed-off-by-trailers-are-required) for more details. Commits with extremely trivial or changes or that do not change content (e.g. merge commits) are excepted.

If you’re setting up a new repository, make sure the README includes a link to our contribution guidelines so people can find information about the DCO signoff.
