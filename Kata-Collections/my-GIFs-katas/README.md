# GIF Katas

## Summary

This folder pulls all katas from `Summer2019/Languages/my-GIF-lang/examples.rkt` and builds a displayable webpage.

Keep your actual kata definitions in `katas.rkt` (whether you write them there
or `require/provide` them from another collection). __This is where you will add stimuli for your katas.__

Use `scribblings/manual.scrbl` to organize katas on a web page.  Custom renderings (e.g. for gamification) should go in `rendering.rkt`.

From this directory, __use the following to generate the katas__:

```
./scripts/build-katas
```

Make sure to use this line to check if your changes are valid.

## Structure 

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
my-GIFs-katas/
  - assets/
  - compiled
  - doc/
    - manual/
  - scribblings/
    - manual.scrbl
  - scripts/
  - test-code/
  - info.rkt
  - katas.rkt
  - README.md
  - rendering.rkt
 
```

Index page will be in:

```
doc/manual/index.html
```
