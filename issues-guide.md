Issues Guide
=============
This is a guide for collaborators and non-collaborators on how GitHub issues
are handled and processed. 


The Sprint
-----------
A large part of our issue flow is dictated by our weekly sprints. The details
of those can be read about at https://github.com/ipfs/pm#sprints. 


Github Labels
--------------
We make extensive use of Github labels to help us and our tools organize issues.
Here is a rough guide. Note that it isn't strictly followed and feel free to
reference the [ipfs/go-ipfs repo's labels](https://github.com/ipfs/go-ipfs/labels).

### Colors  
* yellow: Documentation  
* light red: An important topic like security 
* orange: An important task like cleanup / refactor  
* red: Very important stuff like bugs
* light green: The difficulty level 
* green: Help wanted
* dark green: Testing  
* blue: A topic or subsystem 
* purple: Enhancement
* gray: Used by tools like [Waffle](https://waffle.io/ipfs/ipfs)  

### Naming 
It's very ad-hoc with no strict science. Generally, the names should be
understandable by themselves. For example, use "difficulty: moderate" instead
of "moderate". 

### Commonly Used Labels
Here are some common labels currently in use:
* yellow
    * documentation
* light red
    * security
* red
    * bug
* light green
    * difficulty: easy
    * difficulty: moderate
    * difficulty: hard
* green
    * help wanted
* dark green
    * testing
    * test_failure
* purple
    * enhancement
* gray
    * icebox - Waffle Icebox column
    * backlog - Waffle Backlog column
    * sprint - Waffle Sprint column
    * in progress - Waffle In Progress column
    * codereview - Waffle Code Review & QA column


Waffle
-------
[Waffle](https://waffle.io/ipfs/ipfs) is our issue board and is divided into 
7 columns:
* New Issues: This is pretty self explanatory and is where all the new issues
    get thrown into.
* Icebox: These are issues we've decided that aren't important for now, but
    will want to get to some day.
* Backlog: These are the issues that are ready for work to begin on and we 
    will pull from these when determining what to work on for 
    the next sprint cycle.
* Sprint: These are the issues that are being tackled for the current sprint.
* In Progress: These are the issues that people are working on at the current
    point in time. 
* Code Review & QA: These are the issues where work has been completed and 
    the issues are open for feedback and comments. An issue here may be
    moved back to the In Progress column when feedback is no longer necessary 
    because there are substantial enough code review 
    changes that additional comments would no longer be helpful. 
* Done: All the issues that have been closed in the past week.

### Some notes
It's not necessary to use Waffle directly. Everything done in Waffle 
can be done through GitHub. Dragging an issue between
columns is the same as reassigning the issue the corresponding label for that column. 

When working on an issue, don't feel like you have to drag it around with the 
pull request submission that fixes it. Waffle does a decent job at
connecting a pull request to an issue, but it isn't perfect so just do what makes sense. 
Waffle is more about communicating to others about the progress of an issue 
than anything else.


Closing Issues
---------------
Issues should only be closed when they have in fact been resolved. This makes
searching for unresolved or duplicate issues much easier. It also means that
issues are only reopened when the original issue was in fact not resolved.
In instances where an issue submitter is not responding to questions and feedback
the issue should be put in the icebox. We can later come back to close the 
issue when it's no longer relevant and has thus been "resolved" because of it. 


Issue Workflow Example
-----------------------
### New issue submitted
1. The issue is submitted:
    * The issue gets automatically sent to the New Issues column in Waffle.
    * A collaborator on the repo intercepts the issue and begins discussion on
      the issue.
2. The issue has been sufficiently described for work to begin:
   * If work should begin soon on the issue then a collaborator moves the issue
     to the backlog column. Less pressing issues are moved to the Icebox column.
3. In a sprint meeting, a collaborator decides to work on an issue:
    * The issue is moved to the Sprint column and assigned an owner.
4. A collaborator starts work on the issue:
    * The collaborator moves the issue to the In Progress column.
5. The collaborator submits a pull request for the work they've completed:
    * The pull request is automatically moved to the In Progress column.
6. The collaborator decides that their work is ready for review:
    * The collaborator moves the pull request to the Code Review & QA column.
7. The collaborator's peers have pointed out some changes:
    * The collaborator makes the appropriate changes. If the changes are large
      enough that additional comments wouldn't be beneficial, the issue should
      be moved back to the In Progress column and repeat step 6.
8. The collaborator's peers have determined that the pull request is ready to
    be merged:
    * The pull request is merged by the collaborator's peers and the issue is
      closed.

### Non-collaborator pull request submitted
Note that this flow may be completely incorrect and should be used as a general
guideline. These should be handled on a case-by-case basis primarily because 
everyone who wants to contribute has the opportunity to become a collaborator.

1. The pull request is submitted:
    * The issue gets automatically sent to the Backlog column in waffle.
2. In a sprint meeting, a collaborator decides to work on the issue:
    * The issue is moved to the Sprint column and assigned an owner.
3. The collaborator starts work on the issue:
    * The collaborator moves the issue to the Code Review & QA column.
4. Questions and comments are made by the collaborator:
    * The pull request submitter makes the appropriate changes.
5. The collaborator determines that the pull request is ready to be merged:
    * The pull request is merged by the collaborator.


References
-----------
* https://robinpowered.com/blog/best-practice-system-for-organizing-and-tagging-github-issues/
* https://www.zenhub.io/blog/how-the-zenhub-team-uses-zenhub-boards-on-github/#zenhubboardsforproductdevelopment
