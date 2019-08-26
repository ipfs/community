# Content and Documentation Styleguide

This is the content styleguide for our natural language descriptions used in the CLI tools, documentation, and anywhere words are written. Please conform to this spec.

### Table of Contents

- [Code references](#code-references)
  - [Acronyms](#acronyms)
    - [Accepted forms:](#accepted-forms)
- [Linguistic rules](#linguistic-rules)
- [Ungendering](#ungendering)
    - [Motivation](#motivation)
- [Words to Avoid](#words-to-avoid)
- [Additional Resources](#additional-resources)

## Code references

- Use `backticks` for every code example inside of a normal description. In the CLI, where you cannot use backticks, use 'single quotes' for commands.
- Default settings should always be specified in a new sentence, not in parentheses, at the end. Default: like this.
- For command line arguments, do not include a `$` or `>` before commands in man pages. Instead, indent. A `$` or `>` may be included in READMEs; prefer `>` over `$`, as it is more universal.

### Acronyms

- IPFS is always capitalized if it is not referring to an `ipfs` CLI command.
- DAG is always capitalised unless it is used in the first instance.

#### Accepted forms:

- merkle-dag
- trickle-dag

## Linguistic rules

- End phrases with a period. (Like that one).
- Capitalize the first letter of a phrase or sentence.
- Command and subcommand taglines (and option descriptions when possible) should use the imperative mood. For example: "Clear a field.", "Interact with the DHT."
- Use the active voice wherever possible. Doing this clearly identifies the subject in a sentence, such as an entity or code component, which is especially helpful in technical documentation.

    Do say:

    > We recommend the badger datastore in most situations.
    > 
    > The constructor automatically starts IPFS unless you set `{start: false}`.

    *Do not* say:

    > The badger datastore is recommended.
    >
    > IPFS is automatically started unless `{start: false}` is set.

- Except in technical specifications, address the reader directly as “you.” You can also use “we” to represent the views or work of the IPFS core team. Make sure to keep the same method of address throughout a document (e.g. don’t switch from “you should…” at the beginning to “one should…” at the end).
- Always look for ways to simplify your language and use shorter, clearer phrases.

    Do say:

    > the CID points to data…

    *Do not* say:

    > the CID is used as a standardized way of pointing to data…

    (But don’t cut critical terms — if “standardized” was important here, you could also write “the CID is a standardized pointer to data…“)
  
- Keep in mind you are writing for an international audience. Use more common words wherever you can. For example, say “short” instead of “compact.” [Plainlanguage.gov](https://plainlanguage.gov/guidelines/words/use-simple-words-phrases/) has a good list of examples.
- Use specific terminology rather than abstract terminology wherever possible. If an abstract term is the best fit, make sure to descibe the context and meaning you are using it for.

    The most common example of this in IPFS is the term “node.” If you are talking about a process running IPFS, try using “peer” or “IPFS instance” instead, or at least clarify it by saying “*IPFS* node.”

## Headings

- Single word headings in man pages should be capitalized. They should not be followed by a colon. Enumerated examples:
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

## Words to Avoid

Many terms may unintentionally insult or discourage readers. For example, saying something is “easy” can make someone feel like they aren’t good enough or smart enough if it turned out not to be easy for them! Try not to use these words:

- easy
- easily
- simply
- simple
- obviously
- just
- basically
- clearly
- sexy
- insane

For more on this, read Chris Coyier’s excellent article, “[Words To Avoid in Educational Writing](https://css-tricks.com/words-avoid-educational-writing/).”

## Additional Resources

- The US Government’s [Plain Language Guidelines](https://plainlanguage.gov/guidelines/)
- [Words To Avoid in Educational Writing](https://css-tricks.com/words-avoid-educational-writing/) by Chris Coyier
- The National Center on Disability and Journalism’s [Disability Language Style Guide](http://ncdj.org/style-guide/)
- [Panlexicon](https://panlexicon.com) is an amazing thesaurus that can help you find alternative terms.

## Changes

This is a living document and may be updated from time to time. Please refer to the git history for this document to view the changes.

## Credit and License
This styleguide is based on the [Linux man-pages manual](http://man7.org/linux/man-pages/man7/man-pages.7.html).

This document may be reused under a [Creative Commons Attribution-ShareAlike License](http://creativecommons.org/licenses/by-sa/4.0/).
