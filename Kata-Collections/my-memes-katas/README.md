# Meme Katas 

## Summary

Katas in this folder provide guidance on using blank meme templates and
the __2htdp/image library__ to create personalized memes.

The proposed three difficulty levels are:
- _Easy_: Importing a blank meme template
- _Medium_: Overlaying a blank meme template with personalized text
- _Hard_: Overlaying animations using the 2htdp/universe

## Structure

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
KATA-COLLECTION-NAME/
  - README.md
  - info.rkt
  - katas.rkt 
  - katas/
  - rendering.rkt
  - scribblings/
    - manual.scrbl
  - scripts/
  - (various ExampleMemes.rkt)
```

Keep your actual kata definitions in `katas.rkt` (whether you write them there
or `require/provide` them from another collection).  Use `scribblings/manual.scrbl`
to organize katas on a web page.  Custom renderings (e.g. for gamification) should go in `rendering.rkt`.

From this directory, use the following to generate the katas:

```
./scripts/build-katas
```

Index page will be in:

```
doc/manual/index.html
```
