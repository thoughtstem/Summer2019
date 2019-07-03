#lang scribble/manual

@section{Tips and Tricks}

@subsection{Git}

A key command to check your local status is:

@verbatim{git status}

If you want to push your code, there are three relevant commands (add, commit, and push).

A common sequence might be:

@verbatim{git add .}
@verbatim{git commit -m "Whatever you want to say about your commit"}
@verbatim{git push origin master}

Often, however, you'll need to pull down code from the repo (i.e. if your push fails).

To check what branch you're on, use:

@verbatim{git branch}

The command to switch to an existing branch or create a new branch and switch to it are:
@verbatim{git checkout branchName}
@verbatim{git checkout -b [branchName]}

@verbatim{git pull origin master}

To run the whole project, use:
@verbatim{raco build-summer-2019}

