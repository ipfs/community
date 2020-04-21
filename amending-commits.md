## How to amend commits

Table of Contents:
  - [Improving commit messages](#improving-commit-messages)
    - [Improving the commit message of the last commit](#improving-the-commit-message-of-the-last-commit)
    - [Improving the commit message of any commit](#improving-the-commit-message-of-any-commit)
    - [Note on the `commit-msg` hook](#note-on-the-commit-msg-hook)
  - [Updating/Rebasing some commits](#updatingrebasing-some-commits)
  - [Editing the last commit](#editing-the-last-commit)
  - [Squashing, removing and reordering commits, or editing old commits](#squashing-removing-and-reordening-commits-or-editing-old-commits)
  - [More documentation](#more-documentation)

Amending commits is useful for improving the quality of existing commits.
For example, after code review or after an automatic tool, like GitCop,
finds problems in some commits, amending commits will be your best way to
move forward so that your commits can be included.

Commits should not be amended if they are on an official branch.
Only amend local commits, or commits that are in a not yet merged
pull request (PR).

If you do amend commits, (after checking that your PR has not been
merged yet) you should force push (using `git push -f ...`) your PR
branch to overwrite the old commits in your PR.

### Improving commit messages

#### Improving the commit message of the last commit

It's very easy to improve the commit message of the last commit on the
current branch. Just run:

```sh
$ git commit --amend
```

This will open an editor for you to change the commit message, and, when
you save and close the editor, it will replace the last commit with a
new one that has the improved commit message.

This means that if you used the
[setup_commit_msg_hook.sh script](dev/hooks/setup_commit_msg_hook.sh)
to automatically add some trailers if they are not there, then running
`git commit --amend` and then saving and closing the editor is enough
for the missing trailers, if any, to be added.

#### Improving the commit message of any commit

It's also easy to improve the commit message of more than one commit on
the current branch. For example, let's say you want to edit the last 3
commits. Just run:

```sh
$ git rebase -i HEAD~3
```

This will open an instruction sheet (which is sometimes called a TODO
list) in your editor where you can specify how commits should be
rebased. There you just need to replace the `pick` instruction at the
beginning of some lines with `r` (or `reword`).

For example change:

```vim
pick 06f6e99 merkledag spec
pick 02b20bf records spec
pick 4d30c14 dht spec
```

to:

```vim
r 06f6e99 merkledag spec
r 02b20bf records spec
r 4d30c14 dht spec
```

When you save and close the instruction sheet, for each line with the
`r` instruction, Git will open an editor for you to change the commit
message of the commit that follow the `r` instruction.

This means that, as when using `git commit --amend`, if you used the
[setup_commit_msg_hook.sh script](dev/hooks/setup_commit_msg_hook.sh)
then saving and closing the editor for each commit message is enough
for the missing trailers, if any, to be added.

#### Note on the `commit-msg` hook

We use a `commit-msg` hook in order to add a license and a sign off
message, so that we know who committed a file. Git hooks are automatic
scripts that run after a certain git action. More information about
them can be [found here](http://git-scm.com/book/uz/v2/Customizing-Git-Git-Hooks).

After editing or creating a commit message, Git runs the commit-msg
hook, if it has been set up. This hook modifies the just edited
or created commit message. This works even when editing the commit
message did not change it. So the commit message could still end up
being changed by the commit-msg hook.

### Updating/Rebasing some commits

Sometimes a developer starts working on some features on a "dev"
branch. And then, when the work is ready to be merged, people realize
that some other features have been added to the "master" branch since
the developer started working.

In this case some projects are OK with merging the "dev" branch as is
into the "master" branch, but on IPFS related projects we often prefer
to have people rebase their work before merging it. The main reason
for that is that it simplifies the history graph. So we often ask
people to rebase their work.

To do that you first need to fetch from the GitHub repository using:

```sh
$ git fetch
```

This will make sure you are up-to-date regarding upstream. And then
you can rebase using:

```sh
$ git rebase origin/master
```

Make sure you are on the branch you want to rebase (using for example
`git checkout dev`) though before rebasing.

### Editing the last commit

To edit the last commit, you can make changes, stage them (using
git-add for example) and then run `git commit --amend`.

Another way is to just make changes and then run
`git commit --amend <path>...`
where <path>... are the paths with the changes you want to see changed
in the last commit.

For more on this, have a look at git-commit and its --amend option:

http://git-scm.com/docs/git-commit

### Squashing, removing and reordering commits, or editing old commits

There is a lot of other ways to edit history: you can squash commits
together, remove specific commits, reorder them, and so on. To learn
more, have a look at git-rebase and its interactive mode (option `-i` or
`--interactive`). It is very powerful, and used very often by a lot of
great developers:

http://git-scm.com/docs/git-rebase

### More documentation

The following links have interesting documentation on this subject:

* https://www.kernel.org/pub/software/scm/git/docs/user-manual.html#cleaning-up-history
* http://git-scm.com/book/en/v2/Git-Tools-Rewriting-History
* https://github.com/RichardLitt/docs/blob/master/amending-a-commit-guide.md

