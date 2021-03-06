% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods_handle.R, R/ds_heap_binomial.R,
%   R/ds_heap_fibonacci.R
\docType{methods}
\name{handle}
\alias{handle}
\alias{handle,binomial_heap,vector,missing-method}
\alias{handle,binomial_heap,missing,vector-method}
\alias{handle,fibonacci_heap,vector,missing-method}
\alias{handle,fibonacci_heap,missing,vector-method}
\title{Get the handles and values for nodes of a specific key in a heap.}
\usage{
handle(obj, key, value)

\S4method{handle}{binomial_heap,vector,missing}(obj, key)

\S4method{handle}{binomial_heap,missing,vector}(obj, value)

\S4method{handle}{fibonacci_heap,vector,missing}(obj, key)

\S4method{handle}{fibonacci_heap,missing,vector}(obj, value)
}
\arguments{
\item{obj}{a heap object}

\item{key}{a key in the heap}

\item{value}{a value in the heap}
}
\value{
returns extracted handles and values from \code{obj}
}
\description{
Returns a list of handles and values for node elements that have
 a specific key. That means for a given key, the reference to the node
 (the handle) as well as the value of the node are returned. If one key fits
 fits multiple nodes, all of the values and handles are returned. This is
 needed in order to uniquely identify a node if, for example,
 \code{decrease_key} on a specific node is going to be called.
}
