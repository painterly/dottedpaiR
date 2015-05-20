# Hello, world!
#
# This is an example function named 'hello' 
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


nil <- pairlist()

null_huh <- function(x) {
  is.null(x)
}

pair_huh <- function(x) {
  is.pairlist(x) && !is.null(x)
}

cons <- function(a,d) {
  pairlist(a,d)
}

car <- function(ls) {
  ls[[1]]
}

cdr <- function(ls) {
  ls[[2]]
}

cadr <- function(ls) {
  car(cdr(ls))
}

cdar <- function(ls) {
  cdr(car(ls))
}

caddr <- function(ls) {
  car(cdr(cdr(ls)))
}

caadr <- function(ls) {
  car(car(cdr(ls)))
}

list_length <- function(ls) {
  if (null_huh(ls))
    { 0 }
  else
    { 1 + list_length(cdr(ls)) }
}

list_append <- function(l,s) {
  if (null_huh(l))
    { s }
  else
    { cons(car(l), list_append(cdr(l), s)) }
}

list_map <- function(f,ls) {
  if (null_huh(ls))
    { nil }
  else
    { cons(f(car(ls)), list_map(f, cdr(ls))) }
}
