<img src="inst/img/dottedpear.png">

## Installation

Install the development version of dottedpaiR from GitHub using the devtools package.

```r
devtools::install_github('painterly/dottedpaiR')
```

## About dottedpaiR

In the Scheme and Lisp family of programming languages, car and cdr are primitive operations on cons cells. The cons cell is not only used to build linked lists but also to build pair and nested pair structures. A cons cell is composed of two pointers where car extracts the first pointer and cdr extracts the second pointer.

In R, pairlist objects are similar to Lisp’s dotted-pair lists. Pairlists are deprecated in R and are handled in the same way as generic vectors. When an internal pairlist is accessed from R, it is converted to a generic vector including when taking subsets. The difference between pairlists and lists in R is that the empty pairlist returns null whereas an empty list returns a list.

The dottedpaiR package implements Scheme-like functions in R. It implements a cons function. One can construct lists using the cons function and extract list elements using cdr and car and it's variations. The package is in early development and more functions will be implemented. See the quickstart to start using dottedpaiR.

## Quick Start

Construct Scheme-like pairlists using cons:

Note that the arguments to the cons function is a pairlist where 3 is the car and cons(4,nil) is the cdr.

```r
cons(3,cons(4,nil))
```
```
[[1]]
[1] 3

[[2]]
[[2]][[1]]
[1] 4

[[2]][[2]]
NULL
```

Extract list elements using cons and cdr and car. The argument must be a pairlist using the cons() function:

```r
car(cons(3,cons(4,nil)))
```
```
[[1]]
[1] 3
```



