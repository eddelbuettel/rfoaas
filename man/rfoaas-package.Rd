\name{rfoaas-package}
\alias{rfoaas-package}
\alias{rfoaas}
\alias{print.rfoaas}
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
\alias{keepcalm}
\alias{dalton}
\alias{dosomething}
\alias{off_with}
\alias{retard}
\alias{thumbs}
\alias{back}
\alias{bm}
\alias{gfy}
\alias{greed}
\alias{me}
\alias{mornin}
\alias{think}
\alias{keep}
\alias{single_}
\alias{look}
\alias{looking}
\alias{no}
\alias{give}
\alias{zero}
\alias{pulp}
\alias{sake}
\alias{anyway}
\alias{maybe}
\alias{blackadder}
\alias{horse}
\alias{deraadt}
\alias{problem}
\alias{cocksplat}
\alias{too}
\alias{thing}
\alias{asshole}
\alias{cup}
\alias{fyyff}
\alias{immensity}
\alias{programmer}
\alias{rtfm}
\alias{thinking}
\alias{bag}
\alias{equity}
\alias{fts}
\alias{ing}
\alias{particular}
\alias{ridiculous}
\alias{shit}
\alias{even}
\alias{fewer}
\alias{ftfy}
\alias{holygrail}
\alias{idea}
\alias{jinglebells}
\alias{legend_}
\alias{logs}
\alias{ratsarse}
\alias{rockstar}
\alias{waste}
\alias{absolutely}
\alias{dense}
\alias{dumbledore}
\alias{lowpoly}
\alias{understand}
\alias{yeah}
\alias{getRandomFO}
\docType{package}
\title{R Interface to FOAAS}
\description{
  The FOAAS service is provided as a modern, RESTful, scalable
  solution. This package provides an R interface.
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
  keepcalm(reaction, from, filter, language)
  dalton(name, from, filter, language)
  dosomething(do, something, from, filter, language)
  off_with(name, from, filter, language)
  retard(from, filter, language)
  thumbs(name, from, filter, language)
  back(name, from, filter, language)
  bm(name, from, filter, language)
  gfy(name, from, filter, language)
  greed(something, from, filter, language)
  me(from, filter, language)
  mornin(from, filter, language)
  think(name, from, filter, language)
  keep(name, from, filter, language)
  single_(from, filter, language)
  look(name, from, filter, language)
  looking(from, filter, language)
  no(from, filter, language)
  give(from, filter, language)
  zero(from, filter, language)
  pulp(name, from, filter, language)
  sake(from, filter, language)
  anyway(name, from, filter, language)
  maybe(from, filter, language)
  blackadder(name, from, filter, language)
  horse(from, filter, language)
  deraadt(name, from, filter, language)
  problem(name, from, filter, language)
  cocksplat(name, from, filter, language)
  too(from, filter, language)
  thing(name, from, filter, language)
  asshole(from, filter, language)
  cup(from, filter, language)
  fyyff(from, filter, language)
  immensity(from, filter, language)
  programmer(from, filter, language)
  rtfm(from, filter, language)
  thinking(name, from, filter, language)
  bag(from, filter, language)
  equity(name, from, filter, language)
  fts(name, from, filter, language)
  ing(name, from, filter, language)
  particular(name, from, filter, language)
  ridiculous(from, filter, language)
  shit(from, filter, language)
  even(from, filter, language)
  fewer(name, from, filter, language)
  ftfy(from, filter, language)
  holygrail(from, filter, language)
  idea(from, filter, language)
  jinglebells(from, filter, language)
  legend_(name, from, filter, language)
  logs(from, filter, language)
  ratsarse(from, filter, language)
  rockstar(name, from, filter, language)
  waste(name, from, filter, language)
  absolutely(name, from, filter, language)
  dense(from, filter, language)
  dumbledore(from, filter, language)
  lowpoly(from, filter, language)
  understand(name, from, filter, language)
  yeah(from, filter, language)
 
  getRandomFO(name, from, filter, language)

  version()
  operations()

  \method{print}{rfoaas}(x, width = NULL, ...)

}
\arguments{
  \item{name}{The name to whom the message is directed.}
  \item{from}{The name of the message requester. If omitted, the value
    of the (optional) global variable \sQuote{rfoaasFrom} is used, and if
    that variable is missing or unset, a default is filled-in based on the
    user name obtained via \code{\link{Sys.info}}.}
  \item{filter}{An optional filter. If unset, the (optional) global
    variable \sQuote{rfoaasFilter} can provide a default, and a fallback
    value of \sQuote{none}. Currently the only other permitted value is
    \sQuote{shoutcloud} to enable filtering via the magnificient
    \url{http://shoutcloud.io} service.}
  \item{language}{An optional filter argument. If set, the message is
    internationalized to the given (optional) language stated as the the
    usual two-character code such as \sQuote{fr}, \sQuote{de},
    \sQuote{es}.}
  \item{reference}{An additional referenced in the message.}
  \item{company}{A company referenced in the message.}
  \item{tool}{A company referenced in the message.}
  \item{do}{A activity referenced in the message.}
  \item{something}{An object referenced in the message.}
  \item{reaction}{An activity referenced in the message.}

  \item{x}{Default object for \code{print} method}
  \item{width}{Optional column width parameter}
  \item{...}{Other optional arguments}
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
    if (require(jsonlite)) print(fromJSON(operations()))

    }
}
\keyword{package} 
