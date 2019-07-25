Summer2019
==========
## Repository Overview

Interns are currently working on __six__ different kata collection projects. Each project has a folder in `Languages` (where you will be adding the actual kata code) and a corresponding folder in `Kata-Collections` (where you will build/format the kata on a site).

Below are the __current__ goals of the six kata collections:

- __Data Science__: A large, diverse category that includes any teachings related to data science. Current katas emphasize visualization of data. Proto-katas that contain functions such as `curry`, `map` or `apply` will go here and those that use the __plot__ library. 

- __Fundamentals__: A large, diverse category guiding through relatively simple projects that teach how to use the __pict__, __2htdp/image__, and __2htdp/universe__ library.

- __Game__: Several kata sets that teach the __2htdp/universe library__ to create a finished interactive/animated game-like product.

- __GIF__: Kata sets that teach how to use blank GIF template and the __2htdp/image__ library to create personalized GIFs. 

- __Memes__: Several katas sets that teach how to use blank meme templates and the __2htdp/image__ library to create personalized memes.

- __Web__: Several kata sets that teach web design using basic __CSS__ through Racket.

## Installation and Git Directions

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

In general, the way that Git/GitHub works is that the files are stored in a __repository__ (or __"repo"__), and Git tracks
the changes that you make to the files, so that you can revert if you need to. 

A repository can also have __branches__. Each branch has its own associated changes and log of changes (called __commits__).

In order to keep your local code up to date with the web-hosted repository, you __pull__ from the repository. In order to put your
changes into the repository, you __push__ your code.

A key command to check your local status is: `git status`. This will tell you if your branch is behind the master branch which files you have changed. This makes it helpful both when you are figuring out
which files to add and when you are figuring out if you need to pull or not.

`git pull origin master`

The `git pull` command downloads all of the changes from the repository that you don't have. You have to do this
separately for each branch. It is a good idea to pull before you start making changes, and before you push your code.

A commit is a record of all the changes you make to some code. It is beneficial to make many commits when coding.
When you want to upload your new code to github, you push your code, which takes all your commits and adds them to the project.

## Directions to Add a New Kata:

1) Open `Languages/[LANGUAGE]/examples.rkt`.
2) Define a code example inside of __examples.rkt__. "id" will be what you refer to your kata with in Step 4.
```
(define-code-example some-path id
                [CODE] )
```
3) Open `Kata-Collections/[MY-KATAS]/katas.rkt`.
4) Add stimuli under a kata definition in __katas.rkt__
```
'id
(read "Create a red circle that...")
```

5) Stay in the the katas folder (like my-fundamentals-katas) and run `./scripts/build-katas` in your terminal.
