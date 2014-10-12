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
\alias{outside}
\alias{thing}
\alias{thanks}
\alias{flying}
\alias{fascinating}
\alias{madison}
\alias{cool}
\alias{field}
\alias{nugget}
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
  pink(name)
  life(name)
  chainsaw(name, from)
  outside(name, from)
  thing(name, from)
  thanks(from)
  fascinating(from)
  madison(name, from)
  cool(from)
  field(name, from, reference)
  nugget(name, from)

  version()
  operations()
}
\arguments{
  \item{name}{The name to whom the message is directed.}
  \item{from}{The name of the message requester.}
  \item{reference}{An additional reference in the message.}
}
\value{
  For all but one queries, a text string with the request FOAAS message is returned.

  The exception is the very last query listed: \code{operations()}
  returns a JSON object describing all queries currently supported by
  the API, along with their (descriptive) name, the URL and the
  supported fields. As the return object is in JSON, one the available
  JSON parsers implementing a \code{fromJSON()} method is recommended to
  convert it into a native R object.
}
\details{
  The \code{operations()} query returns a JSON object describing the
  current API. The \code{version()} function returns the current API
  version (as text). All other methods return the requested FOAAS
  message using the given arguments.

  See \url{http://foaas.com} for complete service details at the current
  API level.

  At present, only plain text requests are made and returned (with one
  exception being \code{operations()}, see above).
}
\author{Dirk Eddelbuettel}
\keyword{package}
