# dottedpaiR

## Installation

Install the development version of dottedpaiR from GitHub using the devtools package.

```r
devtools::install_github('painterly/dottedpaiR')
```

## About dottedpaiR

In Scheme and Lisp family of programming languages, car and cdr are primitive operations on cons cells. The cons cell is not used only to build linked lists but also to build pair and nested pair structures. A cons cell is composed of two pointers where car extracts the first pointer and cdr extracts the second pointer.

In R, pairlist objects are similar to Lisp’s dotted-pair lists. Pairlists are deprecated in R handled in same way as generic vectors. When an internal pairlist is accessed from R, it is converted to a generic vector including when taking subsets. The difference between pairlists and lists in R is that the empty pairlist returns null whereas an empty list returns a list.

The dottedpaiR package implements a Scheme-like cons function. One can construct lists using the cons function and extract list elements using cdr and car.

## Quick Start

Construct Scheme-like pairlists using cons

```r
cons(3,cons(4,nil))
```

Extract list elements using cons and cdr and car. The argument must be a pairlist using the cons() function.

```r
cdr(cons(3,cons(4,nil)))
```

## Contributing
If you would like to add a function, please fork the repo and file a pull request.

