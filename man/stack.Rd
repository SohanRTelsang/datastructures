% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ds_deque_stack.R
\name{stack}
\alias{stack}
\title{Create a new \code{stack}}
\usage{
stack(key.class = c("character", "numeric", "integer"))
}
\arguments{
\item{key.class}{the primitive class type of the keys}
}
\value{
returns a new \code{stack} object
}
\description{
Instantiates a new \code{\linkS4class{stack}} object,
 i.e. a list implementation with LIFO principle.
}
