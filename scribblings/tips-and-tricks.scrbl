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

@verbatim{git pull origin master}

