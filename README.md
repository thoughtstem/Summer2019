Summer2019
==========

Installation for `Summer2019` and the library it depends on `ts-tactics`:

```
git clone https://github.com/thoughtstem/Summer2019.git
git clone https://github.com/thoughtstem/TS-Kata-Collections.git

cd TS-Kata-Collections/ts-tactics
raco pkg install

cd ../../Summer2019
raco pkg install

```

Run `raco build-summer-2019` to build the docs and open the master docs file in your browser.

A key command to check your local status is: git status

A commit is a record of all the changes you make to some code. It is beneficial to make many commits when coding.
When you want to upload your new code to github, you push your code, which takes all your commits and adds them to the project.
If you want to push your code, there are three relevant commands (add, commit, and push).

git add .
git commit -m "message/note about the commit"
git push origin "name of branch"

Often, you'll need to pull from the repository if your push fails (to pull use git pull origin master)
Branches let you make changes to the code without affecting the original code until there are no conflicts.
To check what branch you are on use: git branch
To create a branch use: git branch "name of branch"
To switch to a branch use: git checkout "name of branch"
To create and switch to a branch use: git checkout -b "name of branch"

Once the changes were pushed, open the project on github (https://github.com/thoughtstem/Summer2019)
and click on Pull Requests next to "Issues" under "thoughtstem/Summer2019".

Now press on the green "New pull request" button, then on the "Compare changes" page,
set the base as master and compare as the new branch: 
base:master <- compare:new-branch-name

Click on "Create pull request" and wait for the changes to be approved and merged!


