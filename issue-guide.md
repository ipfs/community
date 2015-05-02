The Sprint
-----------
Once a week we get together for a meeting on Google Hangouts. The link is always
posted to the IRC channel. Currently we are meeting at 12pm PDT / 7pm UTC.
This is where collaborators are assigned tasks and issues to work on for a sprint.
Note that anyone can become a collaborator and all they have to do is contact
[@jbenet](https://github.com/jbenet) and join in on a sprint meeting.


Github Labels
--------------
We make extensive use of Github labels to help us and our tools organize issues.
Here is a rough guide.

__The colors:__  
* blue: topic / subsystem  
* light red (important topic): security things  
* red (very important): bugs!!  
* orange (important): cleanup / refactor things  
* light green: the difficulty level  
* dark green: testing  
* yellow: documentation  
* gray labels: used by tools like [waffle.io](https://waffle.io/ipfs/ipfs)  

__Naming:__  
It's very ad-hoc with no strict science. Generally, the names should be
understandable by themselves. For example, use "difficulty: medium" instead
of "medium".


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
* Code Review & QA: These are the issues where work has been completed for 
    and are awaiting approval to be merged or closed.
* Done: All the issues that have been closed in the past week.


Issue Workflow Example
-----------------------
### New issue submitted
1. The issue is submitted:
    * The issue gets sent to the New Issues column in waffle.
    * A collaborator on the repo intercepts the issue and begins discussion on
      the issue.
2. The issue has been sufficiently described for work to begin:
   * If work should begin soon on the issue then a collaborator moves the issue
     to the backlog column, else if the issue should be held off from work for
     a later time then it is moved to the Icebox column.
3. In a sprint meeting, a collaborator decides to work on an issue:
    * The issue is moved to the Sprint column and assigned an owner.
4. A collaborator starts work on the issue:
    * The collaborator moves the issue to the In Progress column.
5. The collaborator submits a pull request for the work they've completed:
    * The pull request is automatically moved to the In Progress column.
6. The collaborator decides that their work is complete:
    * The collaborator moves the pull request to the Code Review & QA column.
7. The collaborator's peers have determined that the pull request is ready to
    be merged:
    * The pull request is merged by the collaborator's peers and the issue is
      closed.

### Non-collaborator pull request submitted
1. The pull request is submitted:
    * The issue gets sent to the Backlog column in waffle.
2. In a sprint meeting, a collaborator decides to work on the issue:
    * The issue is moved to the Sprint column and assigned an owner.
3. The collaborator starts work on the issue:
    * The collaborator moves the issue to the Code Review & QA column.
4. The collaborator determines that the pull request is ready to be merged:
    * The pull request is merged by the collaborator.


References
-----------
* https://robinpowered.com/blog/best-practice-system-for-organizing-and-tagging-github-issues/
* https://www.zenhub.io/blog/how-the-zenhub-team-uses-zenhub-boards-on-github/#zenhubboardsforproductdevelopment
