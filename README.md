# Sass-Pygments

## Introduction

[Sass](http://sass-lang.com/) makes CSS fun again.

[Pygments](http://pygments.org/) is a generic syntax highlighter for general use in all kinds of software such as forum systems, wikis or other applications that need to prettify source code.

Pygments comes with a set of builtin styles, written as Python programs and not css files, for code highlighting. You have to generate a CSS file using the command line. I just figured I'd save someone all this work in the future and generate all the CSS files based on the Pygments builtins.

As a personal preference and since CSS is a subset of Sass I decided to store it in the Sass format (SCSS syntax).

## Quick Start

Navigate to the `styles` directory and choose one of the Pygment styles that has already been converted to Sass.

## DIY

This part will show you how to setup your system to perform the conversions yourself.

**N.B. This will only be necessary if you have a Pygment style that cannot be found in the `styles` directory.**

On the python side of things, we need:

- python
- pip
- virtualenv

And on the ruby side of things, we need:

- ruby
- rubygems
- bundler
- rvm

Once the requirements are met, execute the instructions below and you should be all setup to process your own Pygment style files.

	$ git clone https://github.com/dwayne/sass-pygments.git
	$ virtualenv sass-pygments

	$ cd sass-pygments # and accept the .rvmrc file
	$ bundle && pip install -r .requirements

Now you can run the script on a style file to convert it to Sass.

	$ ./pygments_styles_to_sass.sh name_of_style

The `name_of_style` style is expected to be stored in `./path/to/site-packages/pygments/styles`.
