# New TS-Langauge

This is a ThoughtSTEM language.  It can be installed as a Racket package with: 

```
raco pkg install
```

The cannonical structure of this ThoughtSTEM Language is as follows:

```
my-lang/
  - README.md
  - info.rkt
  - examples.rkt 
  - assets.rkt 
  - assets/
  - main.rkt
  - lang.rkt
  - lang/
    - main.rkt
  - scribblings/
    - manual.scrbl
  - doc/
```

Use the following to generate the examples from their definitions in `examples.rkt`.  This will ensure that all examples are actually valid by runing automatically generated unit tests.

```
raco build-lang-examples
```

API documentation for this language should be written in:

```
scribblings/
```

Or better yet, automatically document your langauge's api by using `define/contract/doc` in `lang/main.rkt`.

As the language grows, additional `.rkt` files for the language's definitions should go in:

```
lang/
```

Use `lang.rkt` to pull everything from `lang/` together with whatever else you want your language to provide
