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
