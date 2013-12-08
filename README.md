homebrew-serialgnu
=================
brew tap for scientific software meant to be used in conjunction with [lmod][].

These formulae provide the latest stable version of serial scientific software using the gnu compilers.
The version that is currently used is the latest 4.8 releases. 

How do I install these formulae?
--------------------------------
```bash
$ brew install homebrew/dupes/apple-gcc42
$ brew install gfortran
$ brew tap homebrew/versions
$ brew install gcc48
$ brew tap hovr2pi/serialgnu 
```
After that it is just `brew install <formula>`.


If the formula conflicts with one from mxcl/master or another tap, you can `brew install homebrew/versions/<formula>`.

You can also install via URL:

```
brew install https://raw.github.com/hovr2pi/scibrew-serial-gnu/master/<formula>.rb
```

Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
[lmod]:http://sourceforge.net/projects/lmod
