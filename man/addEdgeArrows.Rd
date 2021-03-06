% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sigmaAttrs.R
\name{addEdgeArrows}
\alias{addEdgeArrows}
\title{Add edge arrows to a 'sigmaNet' object.}
\usage{
addEdgeArrows(sigmaObj)
}
\arguments{
\item{sigmaObj}{A 'sigmaNet' object - created using the 'sigmaFromIgraph' function}
}
\value{
A 'sigmaNet' object with added edge arrows.  This object can be called directly
  to create a visualization, or modified by additional functions.
}
\description{
Add edge arrows to a directed graph.  Due to complexities of writing custom renderers in webGL, we are stuck with one
arrow:edge size ratio.  In other words, you can only affect the edge arrow size by making the edges bigger.
}
\details{
This is only applicable for directed graphs - if you run this on an undirected graph, you'll get an error.
}
\examples{
library(igraph)
library(sigmaNet)
library(magrittr)

g <- graph.formula(A-+B,B-+C,A-+C)
layout <- matrix(c(2,1, 1,0, 3,0),byrow=TRUE,nrow=3)
sig <- sigmaFromIgraph(g, layout = layout)
sig \%>\%
  addEdgeSize(oneSize = 6) \%>\%
  addEdgeArrows()

}
