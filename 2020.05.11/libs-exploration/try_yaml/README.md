# The yaml library

## Why?

I am really into "Automate the boring stuff" and obviously I do almost all of
it in python. As an experiment I want to do the same with dart.

One of the key elements of these "scripts" is how you provide initial information
to them. A few key ways are ...
1. Config files
2. Environment variables

## Yaml config files

I'v been using linux of over 20, so the only config mechanism I care about is yaml files
in the `~/.config/` folder.

## This project

This project is an exploration of dart libraries for yaml reading and writing.
Right of the bat, I realized the dart ecosystem is "not there" for yaml 
processing in particular and "Automation Scripts" in general. 

There are no equivalent libraries to python's pyyaml or node's yaml packages. It
makes sense, Dart is a newer language with a smaller user base and its focus is
on flutter and the browser.

In this project I explore the 'yaml' package from pub.dev. It's a minimal yaml
lib and it can only read yaml. Writing yaml is no possible yet. Even though its
not full featured, it should be enough for simpler projects.

## Test Criteria

For yaml config files I just need these 3 features ...

1. read key: value pairs

2. reading lists

3. reading embedded values

The `yaml` package does all 3 so I am good to go. Check out `main.dart` to see 
the code.