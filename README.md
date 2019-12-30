# cookbook

## About
This is a collection of common recipes I use formatted to be printed out nicely.

You can view and print the cookbook [here](https://github.com/bryandeagle/cookbook/raw/master/output/cookbook.pdf).

## Building
Simply run the command below from the source directory
```
pdflatex -aux-directory=..\\build -output-directory=..\\output -synctex=0 -interaction=nonstopmode -file-line-error cookbook.tex
```
