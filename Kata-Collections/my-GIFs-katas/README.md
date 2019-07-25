# GIF Katas

## Summary

This folder is for all gif-related katas. Katas are split into three categories:
_Easy_, _Medium_, and _Hard_.

There is one starting example kata in the test folder, along with the images of the gif it creates.

So far, the protocol for creating gifs in Racket has been to use a web application to split a desired gif
into its individual frame images and to download those. Then, the user alters these images to add to the gif
and puts these images into a scene with the function 'big-bang'.

The gifs in the asset folder are all currently .gif files. If this changes then please update this README file.

Also, if a better protocol is found for creating gifs in Racket, please update this README file.

Good luck!

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
  - __gif-katas-a.rkt__
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
