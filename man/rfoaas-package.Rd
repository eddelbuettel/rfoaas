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
\alias{awesome}
\alias{tucker}
\alias{bucket}
\alias{bday}
\alias{family_}
\alias{shutup}
\alias{zayn}
\alias{dalton}
\alias{dosomething}
%\alias{off_with}
\alias{retard}
\alias{thumbs}
\alias{thing}
\docType{package}
\title{R Interface to FOAAS}
\description{
  The FOAAS service is provided as a modern, RESTful, scalable
  solution. This packge provides an R interface.
}
\usage{
  off(name, from, filter, language)
  you(name, from, filter, language)
  this(from, filter, language)
  that(from, filter, language)
  everything(from, filter, language)
  everyone(from, filter, language)
  donut(name, from, filter, language)
  shakespeare(name, from, filter, language)
  linus(name, from, filter, language)
  king(name, from, filter, language)
  pink(name, filter, language)
  life(name, filter, language)
  chainsaw(name, from, filter, language)
  outside(name, from, filter, language)
  thanks(from, filter, language)
  fascinating(from, filter, language)
  madison(name, from, filter, language)
  cool(from, filter, language)
  field(name, from, reference, filter, language)
  nugget(name, from, filter, language)
  yoda(name, from, filter, language)
  ballmer(name, company, from, filter, language)
  what(from, filter, language)
  because(from, filter, language)
  caniuse(tool, from, filter, language)
  bye(from, filter, language)
  diabetes(from, filter, language)
  bus(from, filter, language)
  xmas(name, from, filter, language)
  awesome(from, filter, language)
  tucker(from, filter, language)
  bucket(from, filter, language)
  bday(name, from, filter, language)
  family_(from, filter, language)
  shutup(name, from, filter, language)
  zayn(from, filter, language)
  dalton(name, from, filter, language)
  dosomething(do, something, from, filter, language)
%  off_with(behaviour, from, filter, language)
  retard(from, filter, language)
  thumbs(name, from, filter, language)

  thing(name, from, filter, language)

  version()
  operations()
}
\arguments{
  \item{name}{The name to whom the message is directed.}
  \item{from}{The name of the message requester. If omitted, the value
  of the (optional) global variable \sQuote{rfoaasFrom} is used, and if
  that variable is missing or unset, a default is filled-in based on the
  user name obtained via \code{\link{Sys.info}}}. 
  \item{filter}{An optional filter. If unset, the (optional) global
  variable \sQuote{rfoaasFilter} can provide a default, and a fallback
  value of \sQuote{none}. Currently the only other permitted value is
  \sQuote{shoutcloud} to enable filtering via the magnificient
  \url{http://shoutcloud.io} service.}
  \item{language}{An optional filter argument. If set, the message is
  internationalized to the given (optional) language stated as the the
  usual two-character code such as \sQuote{fr}, \sQuote{de},
  \sQuote{es}}. 
  \item{reference}{An additional referenced in the message.}
  \item{company}{A company referenced in the message.}
  \item{tool}{A company referenced in the message.}
  \item{do}{A activity referenced in the message.}
  \item{something}{An object referenced in the message.}
  
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

  The \code{filter} argument uses an internal helper function to supply a
  default value: either an R \code{options()} variable accessible via
  the key \code{rfoaasFilter}, or a default of \sQuote{none}. Currently,
  the only other permissible value is \sQuote{shoutcloud} to enable
  filtering via the magnificient \url{http://shoutcloud.io} service.

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
