### The Git Workflow
Here is a very helpful Git cheat sheet! (https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf)

If you want to push your code, there are three relevant commands (add, commit, and push).

```
git add *filename*
git commit -m "message/note about the commit"
git push origin *name of branch*
```

The `git add` command stages files to be committed. You use this to add a file to the list of files that you want to commit. 
If you don't want to commit a certain file, simply don't add it. If you want to add every file that you have made changes to,
replace the *filename* with `-A`.

The `git commit` command commits the changes that you have made (and then added). You should always add a message that is a brief,
one-line description of the changes that you are committing.

The `git push` command uploads your code to the repository, in the branch that you specified. Once you have done this, you 
can check that it worked by going to the repository webpage and looking at the branch you pushed.

### Branches in Git
Branches let you make changes to the code without affecting the original code until there are no conflicts.
To check what branch you are on use: `git branch`
To create a branch use: `git branch "name of branch"`
To switch to a branch use: `git checkout "name of branch"`
To create and switch to a branch use: `git checkout -b "name of branch"`

Once you have pushed changes, open the project on github (https://github.com/thoughtstem/Summer2019)
and click on Pull Requests next to "Issues" under "thoughtstem/Summer2019".

Now press on the green "New pull request" then on the "Compare changes" page,
set the base as master and compare as the new branch: 
`base:master <- compare:new-branch-name`

Click on "Create pull request" and wait for the changes to be approved and merged!

### Signing Out of Git Locally
For those of you who do care about making commits on your account and not someone else's, you can sign out locally on your device using these two lines in your terminal:

```
git config --global --unset user.name
git config --global --unset user.email
```
Then, you will be prompted to sign in when you make a commit.
