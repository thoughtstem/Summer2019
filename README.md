Summer2019
==========

Installation for `Summer2019` and the library it depends on `ts-tactics`:

```
git clone https://github.com/thoughtstem/Summer2019.git
git clone https://github.com/thoughtstem/TS-Kata-Collections.git

cd TS-Kata-Collections/ts-tactics
raco pkg install

cd ../../Summer2019
raco pkg install

```

Run `raco setup Summer2019` to build the docs into the `doc` folder.

The build documentation page will end up at `doc/Summer2019/index.html`
