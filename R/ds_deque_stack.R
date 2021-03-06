# datastructures: Implementation of core datastructures for R.
#
# Copyright (C) Simon Dirmeier
#
# This file is part of datastructures.
#
# datastructures is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# datastructures is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with datastructures. If not, see <http://www.gnu.org/licenses/>.


#' @include ds_deque.R
#' @include methods_peek.R
#' @include methods_pop.R
#' @include methods_size.R
#' @include methods_insert.R
NULL


#' @title Stack class
#'
#' @export
#' @name stack-class
#' @rdname stack-class
#'
#' @description Implementation of a stack data structure, i.e. a list
#'  implementation with LIFO principle. \code{stack} uses a \code{std::deque}
#'  as default container, so inserting, peeking and popping functions require
#'  constant \emph{O(1)}. See \code{\linkS4class{queue}} for a class using
#'  the FIFO principle.
#'
#' @slot .deque  \code{C++} object representing a deque
#' @slot .key.class  the class of the keys
#'
setClass("stack", contains = "deque")


#' @title Create a new \code{stack}
#'
#' @export
#' @importFrom methods new
#'
#' @description Instantiates a new \code{\linkS4class{stack}} object,
#'  i.e. a list implementation with LIFO principle.
#'
#' @param key.class  the primitive class type of the keys
#'
#' @return returns a new \code{stack} object
#'
stack <- function(key.class = c("character", "numeric", "integer")) {
    key.class <- match.arg(key.class)
    if (key.class == "character") {
        stack <- methods::new(stack_s)
    } else if (key.class == "numeric") {
        stack <- methods::new(stack_d)
    } else {
        stack <- methods::new(stack_i)
    }

    methods::new("stack", .key.class = key.class, .deque = stack)
}


#' @rdname peek-methods
setMethod("peek", "stack", .peek.deque)


#' @rdname pop-methods
setMethod("pop", "stack", .pop.deque)


setMethod("show", "stack", .show.deque)


#' @rdname size-methods
setMethod("size", "stack", .size.deque)


#' @rdname insert-methods
setMethod(
    "insert",
    signature = signature(obj = "stack", x = "vector", y = "missing"),
    function(obj, x) .insert.deque(obj, list(x))
)


#' @rdname insert-methods
setMethod(
    "insert",
    signature = signature(obj = "stack", x = "list", y = "missing"),
    function(obj, x) .insert.deque(obj, x)
)


#' @rdname insert-methods
setMethod(
    "insert",
    signature = signature(obj = "stack", x = "matrix", y = "missing"),
    function(obj, x)
    {
        .insert.deque(obj, lapply(seq(nrow(x)), function(i) x[i, ]))
    }
)
