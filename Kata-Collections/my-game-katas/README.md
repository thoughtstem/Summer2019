# Game Katas

## Summary

These step-by-step kata sets teach how to use the ___2htdp/universe___ library.

All katas in this folder aim to teach __game-like interaction__ alongside __animation__. 

__plane-game__ (un-finished) provides katas to create a simple game in which a user-controlled plane shoots bullets.

__googly-eyes__ (finished but can be expanded) provides katas to create an interactive eye.

## Structure

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
my-game-katas/
  - doc/
  - scribblings/
    - manual.scrbl
  - scripts/
  - README.md
  - info.rkt
  - katas.rkt 
  - rendering.rkt
```

Keep your actual kata definitions in katas.rkt (whether you write them there or require/provide them from another collection). Use scribblings/manual.scrbl to organize katas on a web page. Custom renderings (e.g. for gamification) should go in rendering.rkt.

From this directory, use the following to generate the katas:

```
./scripts/build-katas
```

Index page will be in:

```
doc/manual/index.html

```
