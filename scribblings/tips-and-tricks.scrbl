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

@subsection{Git Pull Requests}

If you're in the master branch, switch out to a new branch;

1. To make a new branch:
@verbatim{git branch new-branch-name}

2. To switch out to that new branch:
@verbatim{git checkout new-branch-name}

Now, after modifying the files you wanted, add, commit (see 1.1) and push to the new branch:
@verbatim{git push origin new-branch-name}

Once the changes were pushed, open the project on github (https://github.com/thoughtstem/Summer2019)
and click on Pull Requests next to "Issues" under "thoughtstem/Summer2019".

Now press on the green "New pull request" button, then on the "Compare changes" page,
set the base as master and compare as the new branch: 
@verbatim{base:master <- compare:new-branch-name}

Click on "Create pull request" and wait for the changes to be approved and merged!

@subsection{Formatting of Kata Example Pages}

Please follow the following guidelines for formatting kata example pages.

1. Create a section introduction and group similar katas into these sections.
Some example section title are: 1. Numbers, 2. Pictures, 3. Strings and 4. Lists

@codeblock|{ @section{intro} }|

2. Create subsections for each example. Include a bold example number, like @bold{Example 10} by using @literal|{@bold{Example 10}}|
To create a subsection use:

@codeblock|{ @subsection{Some example here} }|

3. Make sure to include the @literal{#lang racket} and any required libraries in the example code block.
For example:
@codeblock{#lang racket
           (require pict)
           ;more code after}
