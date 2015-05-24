#' dottedpaiR
#' Scheme functions in R
#'
#' @name scheme
#'
#' @param ls list
#' @param f function
#' @param l list
#' @param s list
#' @param x number
#' @param a number
#' @param d number
#' @examples
#' cons(3,cons(4,nil))
#' cdr(cons(3,cons(4,nil)))

#' @export
nil <- pairlist()

#' @export
null_huh <- function(x) {
  is.null(x)
}

#' @export
pair_huh <- function(x) {
  is.pairlist(x) && !is.null(x)
}

#' @export
cons <- function(a,d) {
  pairlist(a,d)
}

#' @export
car <- function(ls) {
  ls[[1]]
}

#' @export
cdr <- function(ls) {
  ls[[2]]
}

#' @export
cadr <- function(ls) {
  car(cdr(ls))
}

#' @export
cdar <- function(ls) {
  cdr(car(ls))
}

#' @export
caddr <- function(ls) {
  car(cdr(cdr(ls)))
}

#' @export
caadr <- function(ls) {
  car(car(cdr(ls)))
}

#' @export
cddr <- function(ls) {
  (cdr(cdr(ls)))
}

#' @export
cadar <- function(ls) {
  car(cdr(car (ls)))
}

#' @export
list_length <- function(ls) {
  if (null_huh(ls))
    { 0 }
  else
    { 1 + list_length(cdr(ls)) }
}

#' @export
list_append <- function(l,s) {
  if (null_huh(l))
    { s }
  else
    { cons(car(l), list_append(cdr(l), s)) }
}

#' @export
list_map <- function(f,ls) {
  if (null_huh(ls))
    { nil }
  else
    { cons(f(car(ls)), list_map(f, cdr(ls))) }
}
