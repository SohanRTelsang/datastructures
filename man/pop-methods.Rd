% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods_pop.R, R/ds_deque_queue.R,
%   R/ds_deque_stack.R, R/ds_heap_binomial.R, R/ds_heap_fibonacci.R
\docType{methods}
\name{pop}
\alias{pop}
\alias{pop,queue-method}
\alias{pop,stack-method}
\alias{pop,binomial_heap-method}
\alias{pop,fibonacci_heap-method}
\title{Pop a single element from an object}
\usage{
pop(obj)

\S4method{pop}{queue}(obj)

\S4method{pop}{stack}(obj)

\S4method{pop}{binomial_heap}(obj)

\S4method{pop}{fibonacci_heap}(obj)
}
\arguments{
\item{obj}{the object to pop an element from}
}
\value{
returns the first element from \code{obj} as list
}
\description{
Remove and return the first element from an object.
}
