#lang scribble/manual

@section{Tips and Tricks}

@subsection{Git}

A key command to check your local status is:

@verbatim{git status}

A commit is a record of all the changes you make to some code. It is beneficial to make many commits when coding.When you want to upload your new code to github, you push your code, which takes all your commits and adds them to the project.

If you want to push your code, there are three relevant commands (add, commit, and push).

A common sequence might be:

@verbatim{git add .}
@verbatim{git commit -m "Whatever you want to say about your commit"}
@verbatim{git push origin master}

Often, however, you'll need to pull down code from the repository (i.e. if your push fails). Git branches let you safely make changes to a project without affecting the original code until the current changes have been completed.

To check what branch you're on, use:

@verbatim{git branch}

The command to switch to an existing branch or create a new branch and switch to it are:

@verbatim{git checkout branchName}
@verbatim{git checkout -b [branchName]}

Once you're done and want to merge your changes back into the master branch, you can make a pull request.
Pull requests are best done through github's GUI. Once all code has been pushed, go to your branch on github.com, and under the code tab, press 'New  pull request.' Then add a title and comment(s) if necessary, and submit the request.
Once submitted, the pull request will be reviewed by a project leader, and then will either be merged or rejected if it is determined there is more work to be done before the code can be merged.


To run the whole project, use:
@verbatim{raco build-summer-2019}

