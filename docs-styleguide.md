# Documentation Styleguide

This is the documentation styleguide for our natural language descriptions used in the CLI tools, and elsewhere. Please conform to this spec.

### TOC

- [Code references](#code-references)
  - [Acronyms](#acronyms)
    - [Accepted forms:](#accepted-forms)
- [Linguistic rules](#linguistic-rules)
- [Ungendering](#ungendering)
    - [Motivation](#motivation)

## Code references

* Use `backticks` for every code example inside of a normal description. In the CLI, where you cannot use backticks, use 'single quotes' for commands.
* Default settings should always be specified in a new sentence, not in parentheses, at the end. Default: like this.
* For command line arguments, do not include a `$` or `>` before commands in man pages. Instead, indent. A `$` or `>` may be included in READMEs; prefer `>` over `$`, as it is more universal.

### Acronyms

* IPFS is always capitalized if it is not referring to an `ipfs` CLI command.
* DAG is always capitalised unless it is used in the first instance.

#### Accepted forms:

- merkle-dag
- trickle-dag

## Linguistic rules

* End phrases with a period. (Like that one).
* Capitalize the first letter of a phrase or sentence.
* Command & subcommand taglines, (and option descriptions when possible) should use the imperative mood. For example: "Clear a field.", "Interact with the DHT."

## Headings

* Single word headings in man pages should be capitalized. They should not be followed by a colon. Enumerated examples:
  - `EXAMPLES`
  - `NOTES`
  - `WARNING`

## Ungendering

Avoid gendering in writing. Do not assume that the user/reader is of a certain gender.

Do's:

```
Users install IPFS on their computers.
Users can choose what to broadcast in the DHT.
```

Don'ts:

```
The user installs IPFS on his computer.
User A can choose if the hash of her newly added file is broadcasted.
```

Established canon, like Alice and Bob for cryptography, can still be used in the gendered way.

#### Motivation

Avoiding gendering in community interaction has multiple benefits. Using a male or female pronoun alienates and unfairly prioritizes one gender in favor of another. For instance, saying "the user and his computer" may feel alienating to women, or vice versa. Luckily, in English, the pronoun 'their' can be used as both a singular and a plural form (cf. [Singular they](https://en.wikipedia.org/wiki/Singular_they)). Saying, "the user and their computer" is entirely acceptable and alleviates the issue.

## Changes

This is a living document and may be updated from time to time. Please refer to the git history for this document to view the changes.

## Credit and License
This styleguide is based on the [Linux man-pages manual](http://man7.org/linux/man-pages/man7/man-pages.7.html).

This document may be reused under a [Creative Commons Attribution-ShareAlike License](http://creativecommons.org/licenses/by-sa/4.0/).
