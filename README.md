homebrew-serialgnu
=================
brew tap for scientific software meant to be used in conjunction with [lmod][].

These formulae provide the latest stable version of serial scientific software using the gnu compilers.
The version that is currently used is the latest 4.8 releases. 

How do I install these formula?
--------------------------------

First we need to make sure that the Xcode CLI tools are installed and that we have the most recent version
of the 4.8 compilers

```bash
$ xcode-select --install
$ brew tap homebrew/versions
$ brew install gcc48 --enable-all-languages
$ brew tap hovr2pi/serialgnu 
```
After that it is just `brew install <formula>`.

You will probably also want to tap scibrew for lmod and the supporting modulefiles

```bash
$ brew tap hovr2pi/scibrew
$ brew install lmod
```

If the formula conflicts with one from mxcl/master or another tap, you can `brew install hovr2pi/homebrew-serialgnu/<formula>`.

You can also install via URL:

```bash
$ brew install https://raw.github.com/hovr2pi/homebrew-serialgnu/master/<formula>.rb
```

Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
[lmod]:http://sourceforge.net/projects/lmod
