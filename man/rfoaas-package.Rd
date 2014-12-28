\name{rfoaas-package}
\alias{rfoaas-package}
\alias{rfoaas}
\alias{version}
\alias{operations}
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
\alias{thanks}
\alias{flying}
\alias{fascinating}
\alias{madison}
\alias{cool}
\alias{field}
\alias{nugget}
\alias{yoda}
\alias{ballmer}
\alias{what}
\alias{because}
\alias{caniuse}
\alias{bye}
\alias{diabetes}
\alias{bus}
\alias{xmas}
\alias{thing}
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
  thanks(from)
  fascinating(from)
  madison(name, from)
  cool(from)
  field(name, from, reference)
  nugget(name, from)
  yoda(name, from)
  ballmer(name, company, from)
  what(from)
  because(from)
  caniuse(tool, from)
  bye(from)
  diabetes(from)
  bus(from)
  thing(name, from)
  xmas(name, from)

  version()
  operations()
}
\arguments{
  \item{name}{The name to whom the message is directed.}
  \item{from}{The name of the message requester.}
  \item{reference}{An additional reference in the message.}
  \item{company}{A company reference in the message.}
  \item{tool}{A company reference in the message.}
}
\value{
  For all (but one) queries, a text string with the request FOAAS
  message is returned. 

  The exception is the very last query listed: \code{operations()}
  returns a JSON object describing all queries currently supported by
  the API, along with their (descriptive) name, the URL and the
  supported fields. As the return object is in JSON, one the available
  JSON parsers implementing a \code{fromJSON()} method is recommended to
  convert it into a native R object.

  Return values are set to the UTF-8 encoding as the FOAAS service
  defaults using UTF-8 strings. Anectodatally, this seems to help only
  on the Windows operating system as the other already handled UTF-8
  correctly. 
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

  The \code{from} argument uses an internal helper function to supply a
  default value: either an R \code{options()} variable accessible via
  the key \code{rfoaasFrom}, or the value of \code{Sys.info()["user"]}
  as fallback.
}
\author{Dirk Eddelbuettel}
\examples{
\dontrun{                   # as we need a needwork connection

    ## returns current API version
    version()

    ## example 'madison' accessor in API
    madison("Billy", "Eric")

    ## operations() returns JSON object listing the accessible functionality
    if (require(jsonline)) print(fromJSON(operations()))

}
}
\keyword{package}
