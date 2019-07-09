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

@subsection{How To Add Your Blog}

1. Make sure your blog is in the correct location Summer2019/scribblings/team-profiles

Make sure to add 1) a bio about yourself and 2) subsections ("Day 1/ "Day 2/ etc.") under which you will add your reflections for each day of the internship.
Also, make sure to save your document (ctrl + "s"). Ensure your formatting is correct by checking with other interns' blogs.

2. Navigate to Summer2019/scribblings/team-profiles/bios.scrbl
Add the following line to the document to ensure that your page shows up on the main blog:

@codeblock|{
  #lang scribble/base

  @title{Team Bios}
  @include-section["your-name.scrbl"]}|

3. Push to the repo. 

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
