# Web Katas

## Summary

Katas that teach basic web design using HTML and CSS in Racket.

## Structure

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
my-web-katas/
  - README.md
  - info.rkt
  - katas.rkt 
  - katas/
  - rendering.rkt
  - scribblings/
    - manual.scrbl
  - doc/
  - web-katas.scrbl
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
