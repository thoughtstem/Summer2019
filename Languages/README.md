# Summer2019

## Languages
This repository organizes various potential teaching language implementations to be used at ThoughtSTEM.


## Adding identifiers to a language

Suppose you want `#lang Summer2019/Languages/my-memes-lang` to provide a special identifier `drake`, enabling people to write something like

```
#lang Summer2019/Languages/my-memes-lang

drake
```

```
#lang Summer2019/Languages/my-memes-lang

(rotate 45 drake)
```

**Step 1:** Define it in the languages `lang/main.rkt`

```
(define drake (bitmap "path/to/drake.png"))
```

**Step 2:** Make sure it works in `lang/main.rkt`.  Run the file and type `drake` in the interactions window.  If you see Drake, it worked.

**Step 3:** Provide `drake` from `lang/main.rkt`

**Step 4:** The identifier is now in the language



Note that if the identifier already exists in some other library, the process is even easier. 

**Step 1:** Require the identifier from library that provides it in the languages `lang/main.rkt`, then reprovide it.

```
(provide something)
(require (only-in library-that-has-something something))
```

**Step 2:** The identifier `something` is now in the language

