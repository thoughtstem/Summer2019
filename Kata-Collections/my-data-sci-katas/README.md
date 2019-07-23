# Data Science Katas

## Summary

This collection provides data science related katas.

## Structure

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
my-data-sci-katas/
  - README.md
  - info.rkt
  - katas.rkt 
  - __new-data-sci-katas.scrbl__
  - rendering.rkt
  - scribblings/
    - manual.scrbl
  - scripts/
  - doc/
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
