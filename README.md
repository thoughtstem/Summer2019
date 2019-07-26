Summer2019
==========
## Repository Overview

Interns are currently working on __six__ different kata collection projects. Each project has a folder in `Languages` (where you will be adding the actual kata code) and a corresponding folder in `Kata-Collections` (where you will build/format the kata on a site).

Below are the __current__ goals of the six kata collections:

- __Data Science__: A large, diverse category that includes any teachings related to data science. Current katas emphasize visualization of data. Proto-katas that contain functions such as `curry`, `map` or `apply` and those that use the __plot__ library will go here. 

- __Fundamentals__: A large, diverse category guiding through relatively simple projects that teach how to use the __pict__, __2htdp/image__, and __2htdp/universe__ library.

- __Game__: Several kata sets that teach the __2htdp/universe library__ to create a finished interactive/animated game-like product.

- __GIF__: Kata sets that teach how to use blank GIF templates and the __2htdp/image__ library to create personalized GIFs. 

- __Memes__: Several kata sets that teach how to use blank meme templates and the __2htdp/image__ library to create personalized memes.

- __Web__: Several kata sets that teach web design using basic __CSS__ through Racket.

## Installation and Git Directions

__LOADS of more git help in `Summer2019/Git-Workflow-Help`!!!__

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
