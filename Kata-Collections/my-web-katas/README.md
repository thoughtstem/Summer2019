# Web Katas

## Summary

Katas that teach basic web design using HTML and CSS in Racket.

## Structure

The cannonical structure of this ThoughtSTEM Kata Collection is as follows:

```
my-web-katas/
  - compiled/
  - doc/
  - scribblings/
    - manual.scrbl
  - scripts/
  - info.rkt
  - katas.rkt
  - README.md
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
