\name{rfoaas-package}
\alias{rfoaas-package}
\alias{rfoaas}
\alias{off}
\alias{you}
\alias{this}
\alias{that}
\alias{everything}
\alias{everyone}
\alias{donut}
\alias{shakespeare}
\alias{linus}
\alias{king}
\alias{pink}
\alias{life}
\alias{chainsaw}
\alias{thing}
\alias{thanks}
\docType{package}
\title{R Interface to FOAAS}
\description{
  The FOAAS service is provided as a modern, RESTful, scalable
  solution. This packge provides an R interface.
}
\usage{
  off(name, from)
  you(name, from)
  this(from)
  that(from)
  everything(from)
  everyone(from)
  donut(name, from)
  shakespeare(name, from)
  linus(name, from)
  king(name, from)
  pink(name, from)
  life(name, from)
  chainsaw(name, from)
  thing(from)
  thanks(from)
}
\arguments{
  \item{name}{The name to whom the message is directed.}
  \item{from}{The name of the message requester.}
}
\value{
  A text string with the request FOAAS message is returned.
}
\details{
  See \url{http://foaas.com} for complete service details.

  At present, only plain text requests are made and returned.
}
\author{Dirk Eddelbuettel}
\keyword{package}
