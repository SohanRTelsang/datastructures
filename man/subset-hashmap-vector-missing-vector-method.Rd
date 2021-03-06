% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ds_map_hashmap.R
\docType{methods}
\name{[<-,hashmap,vector,missing,vector-method}
\alias{[<-,hashmap,vector,missing,vector-method}
\title{Insert parts to an object}
\usage{
\S4method{[}{hashmap,vector,missing,vector}(x, i) <- value
}
\arguments{
\item{x}{a \code{map} object}

\item{i}{a vector of keys}

\item{value}{a vector of values for the keys}
}
\description{
Inserts <key, value> pairs to a hashmap.
}
