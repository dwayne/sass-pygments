# Sass Pygments

## Introduction

[Sass](http://sass-lang.com/) makes CSS fun again.

[Pygments](http://pygments.org/) is a generic syntax highlighter for general use in all kinds of software such as forum systems, wikis or other applications that need to prettify source code.

Pygments comes with a set of builtin styles, written as Python programs and not CSS files, for code highlighting. You have to generate a CSS file using the command line. I just figured I'd save someone all this work in the future and generate all the CSS files based on the Pygments builtins.

## Quick Start

**N.B. Both CSS and Sass (using SCSS syntax) files have been pre-generated for your convenience.**

Navigate to the `styles` directory and choose one of the Pygments styles that has already been converted to CSS or Sass.

They were generated as follows:

```bash
$ cd sass-pygments
$ virtualenv .env
$ . .env/bin/activate
(.env) $ bundle && pip install -r requirements.txt
(.env) $ ./bin/convert-all
```

**N.B. `paraiso_dark` and `paraiso_light` styles could not be generated since `pygmentize` could not find the style classes 'Paraiso_DarkStyle' and 'Paraiso_LightStyle' in the style module.**

## DIY

This part will show you how to setup your system to perform the conversions yourself.

**N.B. This will only be necessary if you have custom Pygments style that cannot be found in the `styles` directory.**

You will need:

- Python 2.7.x
  - pip
  - virtualenv

- Ruby 2.x
  - bundler

Once the requirements are met, execute the instructions below and you should be all set to process your own Pygments style files.

```bash
$ cd /tmp
$ git clone git@github.com:dwayne/sass-pygments.git
$ cd sass-pygments

$ virtualenv .env
$ . .env/bin/activate

(.env) $ bundle && pip install -r requirements.txt
```

Now you can run the script on a style to convert it to CSS and Sass.

```bash
(.env) $ STYLES_DIR=/tmp/styles ./bin/convert style
```

For e.g. `style` can be one of the builtins as listed below. But more than likely it will be the name of a custom style you want generated.

```bash
(.env) $ ./bin/show-builtins
algol_nu
algol
arduino
autumn
borland
bw
colorful
default
emacs
friendly
fruity
igor
lovelace
manni
monokai
murphy
native
paraiso_dark
paraiso_light
pastie
perldoc
rrt
tango
trac
vim
vs
xcode
```

When done, just deactivate the virtual environment.

```bash
(.env) $ deactivate
$ ...
```

That's it.

## References

- [Pygments](http://pygments.org/)
- [Solarized](http://ethanschoonover.com/solarized)
  - [pygments-solarized](https://github.com/john2x/solarized-pygment/)

## Copyright

Copyright (c) 2012-2016 Dwayne Crooks.
