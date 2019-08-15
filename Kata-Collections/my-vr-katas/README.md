# Virtual Reality Katas

## Vision

A variety of katas with varying difficulty that teach how to use vr-lang

There should a minimum of __7 kata sets__ containing __7__ easy katas, __7__ medium katas, and __7__ hard katas, totalling to a minimum of 21 katas. __NOTE:__ _This __does not__ mean that there should not be more than 21. Interns want to have more katas, so that we can build a solid collection!_

An __easy__ kata should contain 6-10 `(`s.

A __medium__ kata should contain 11-15 `(`s.

A __hard__ kata should contain 16-21 `(`s.

__NOTE:__ This is __not__ a hard an fast rule. If it's a harder kata set that requires more `(`s then that perfectly fine, but keep in mind this all must fit on a single kata card! 

## Summary

This folder pulls all katas from `Summer2019/Languages/my-vr-lang/examples.rkt` and builds a displayable webpage. 

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
my-data-sci-katas/
  - doc/
  - scribblings/
    - manual.scrbl
  - scripts/
  - README.md
  - info.rkt
  - katas.rkt 
  - rendering.rkt

```

Index page will be in:

```
doc/manual/index.html
```
