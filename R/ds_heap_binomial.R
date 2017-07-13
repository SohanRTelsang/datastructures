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


#' @include ds_heap.R
NULL


#' @title Binomial heap class
#'
#' @export
#' @name binomial_heap-class
#' @rdname binomial_heap-class
#'
#' @description Implementation of a binomial heap datastructure, i.e. a
#'  priority datastructure with \code{push} and \code{pop} in amortized
#'  \emph{O(log n)}. \code{binomial_heap} wraps a Boost
#'  \code{binomial_heap} using Rcpp modules. The heap consists of nodes with
#'  keys and values where the key determines the priority in the heap.
#'  Also see the \code{\linkS4class{fibonacci_heap}} class.
#'
#' @slot .heap  \code{C++} object representing a heap
#' @slot .key.class  the class of the keys
#' @slot .value.class  the class of the values
#'
setClass("binomial_heap", contains = "heap")

#' @noRd
#' @importFrom methods new callNextMethod
setMethod(
    "initialize",
    "binomial_heap",
    function(.Object,
             key.class   = c("character", "numeric", "integer"),
             value.class = c("character", "numeric", "integer"))
    {
        .Object <- methods::callNextMethod(.Object,
                                           key.class   = key.class,
                                           value.class = value.class)
        key.class <- .Object@.key.class
        value.class <- .Object@.value.class

        if (key.class == "character")
        {
            if (value.class == "character")
                heap <- methods::new(binomial_heap_ss)
            else if (value.class == "integer")
                heap <- methods::new(binomial_heap_si)
            else
                heap <- methods::new(binomial_heap_sd)
        }
        else if (key.class == "numeric")
        {
            if (value.class == "character")
                heap <- methods::new(binomial_heap_ds)
            else if (value.class == "integer")
                heap <- methods::new(binomial_heap_di)
            else
                heap <- methods::new(binomial_heap_dd)
        }
        else
        {
            if (value.class == "character")
                heap <- methods::new(binomial_heap_is)
            else if (value.class == "integer")
                heap <- methods::new(binomial_heap_ii)
            else
                heap <- methods::new(binomial_heap_id)
        }

        .Object@.heap <- heap
        .Object
    }
)


