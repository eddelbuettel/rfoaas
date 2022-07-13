##  rfoaas -- An R interface to the FOAAS service
##
##  Copyright (C) 2014 - 2020  Dirk Eddelbuettel <edd@debian.org>
##
##  This file is part of rfoaas
##
##  rfoaas is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 2 of the License, or
##  (at your option) any later version.
##
##  rfoaas is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with rfoaas.  If not, see <http://www.gnu.org/licenses/>.

.foaas <- function(..., filter=.filter(), language=.language()) {

    ## -- The following used to work when foaas.com was running with text/plain in default
    ##
    #req <- URLencode(paste(..., sep="/"))     	         	# collate arguments and encode
    #con <- url(paste0("http://foaas.herokuapp.com/", req)) 	# form url and create connection
    #res <- readLines(con, n=n, warn=FALSE)       		# read one line from connection
    #close(con)                                                 # clean connection
    #Encoding(res) <- "UTF-8"    				# server-side is UTF-8 (on win)
    #res
    ##
    ## -- but now we have to explicitly request it via accept headers, so we need http::GET

    #srv <- "http://foaas.herokuapp.com"
    srv <- "https://foaas.com"
    req <- paste(srv, ..., sep="/")		     	        # collate normal arguments

    ## deal with optional arguments by test and conditional appends
    supargs <- c(ifelse(language=="none", "", paste0("i18n=", language)),
                 switch(filter,
                        "none" = "",
                        "shoutcloud" = "shoutcloud"))
    if (any(supargs != "")) {           			# if we have arguments
        supargs <- paste(supargs, collapse="&")                 # collate them, but ...
        supargs <- gsub("&$", "", gsub("^&", "", supargs)) 	# ... nuke leading/trailing '&'
        req <- paste(req, supargs, sep="?")                     # and append
    }

    req <- URLencode(req)					# encode as a URL just in case
    res <- GET(req, accept("text/plain"))
    txt <- content(res, "text", encoding="utf-8")
    class(txt) <- "rfoaas"
    txt
}

print.rfoaas <- function(x, width = NULL, ...) {
    if (is.null(width)) width <- 0.9 * getOption("width")
    if (width < 10) stop("'width' must be greater than 10", call.=FALSE) #nocov
    invisible(sapply(strwrap(x, width), cat, "\n"))
}

.from <- function() {
    getOption("rfoaasFrom", Sys.info()["user"])
}

.filter <- function(filter=c("none", "shoutcloud")) {
    filter <- getOption("rfoaasFilter", "none")
    filter <- match.arg(filter)
}

.language <- function(language) {
    if (missing(language)) language <- "none"
    language                            # could do other tests here
}


## 'meta' query one -- returns a version string
version     <- function()                      { .foaas("version") }

## 'meta' query two -- returns JSON object descriting name, url, and fields on available queries
## As this returns JSON, use RJSONIO or jsonlite to deal with the result
operations  <- function()                      { .foaas("operations") }

off         <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("off", name, from, filter=filter, language=language) }
you         <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("you", name, from, filter=filter, language=language) }
this        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("this", from, filter=filter, language=language) }
that        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("that", from, filter=filter, language=language) }
everything  <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("everything", from, filter=filter, language=language) }
everyone    <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("everyone", from, filter=filter, language=language) }
donut       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("donut", name, from, filter=filter, language=language) }
shakespeare <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("shakespeare", name, from, filter=filter, language=language) }
linus       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("linus", name, from, filter=filter, language=language) }
king        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("king", name, from, filter=filter, language=language) }
pink        <- function(name, filter=.filter(), language=.language())                              { .foaas("pink", name, filter=filter, language=language) }
life        <- function(name, filter=.filter(), language=.language())                              { .foaas("life", name, filter=filter, language=language) }
chainsaw    <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("chainsaw", name, from, filter=filter, language=language) }
outside     <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("outside", name, from, filter=filter, language=language) }
thanks      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("thanks", from, filter=filter, language=language) }
flying      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("flying", from, filter=filter, language=language) }
fascinating <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("fascinating", from, filter=filter, language=language) }
madison     <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("madison", name, from, filter=filter, language=language) }
cool        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("cool", from, filter=filter, language=language) }
field       <- function(name, from=.from(), reference, filter=.filter(), language=.language())     { .foaas("field", name, from, reference, filter=filter, language=language) }
nugget      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("nugget", name, from, filter=filter, language=language) }
yoda        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("yoda", name, from, filter=filter, language=language) }
ballmer     <- function(name, company, from=.from(), filter=.filter(), language=.language())       { .foaas("ballmer", name, company, from, filter=filter, language=language) }
what        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("what", from, filter=filter, language=language) }
because     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("because", from, filter=filter, language=language) }
caniuse     <- function(tool, from=.from(), filter=.filter(), language=.language())                { .foaas("caniuse", tool, from, filter=filter, language=language) }
bye         <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("bye", from, filter=filter, language=language) }
diabetes    <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("diabetes", from, filter=filter, language=language) }
bus         <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("bus", from, filter=filter, language=language) }
xmas        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("xmas", name, from, filter=filter, language=language) }
awesome     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("awesome", from, filter=filter, language=language) }
tucker      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("tucker", from, filter=filter, language=language) }
bucket      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("bucket", from, filter=filter, language=language) }
bday        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("bday", name, from, filter=filter, language=language) }
family_     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("family", from, filter=filter, language=language) }
shutup      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("shutup", name, from, filter=filter, language=language) }
zayn        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("zayn", from, filter=filter, language=language) }
keepcalm    <- function(reaction, from=.from(), filter=.filter(), language=.language())            { .foaas("keepcalm", reaction, from, filter=filter, language=language) }
dalton      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("dalton", name, from, filter=filter, language=language) }
dosomething <- function(do, something, from=.from(), filter=.filter(), language=.language())       { .foaas("dosomething", do, something, from, filter=filter, language=language) }
off_with    <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("off-with", name, from, filter=filter, language=language) }
retard      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("retard", from, filter=filter, language=language) }
thumbs      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("thumbs", name, from, filter=filter, language=language) }

back        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("back", name, from, filter=filter, language=language) }
bm          <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("bm", name, from, filter=filter, language=language) }
gfy         <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("gfy", name, from, filter=filter, language=language) }
greed       <- function(something, from=.from(), filter=.filter(), language=.language())           { .foaas("greed", something, from, filter=filter, language=language) }
me          <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("me", from, filter=filter, language=language) }
mornin      <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("mornin", from, filter=filter, language=language) }

think       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("think", name, from, filter=filter, language=language) }
keep        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("keep", name, from, filter=filter, language=language) }
single_     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("single", from, filter=filter, language=language) }
look        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("look", name, from, filter=filter, language=language) }
looking     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("looking", from, filter=filter, language=language) }
no          <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("no", from, filter=filter, language=language) }
give        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("give", from, filter=filter, language=language) }
zero        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("zero", from, filter=filter, language=language) }
pulp        <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("pulp", name, from, filter=filter, language=language) }
sake        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("sake", from, filter=filter, language=language) }
anyway      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("anyway", name, from, filter=filter, language=language) }
maybe       <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("maybe", from, filter=filter, language=language) }
blackadder  <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("blackadder", name, from, filter=filter, language=language) }
horse       <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("horse", from, filter=filter, language=language) }
deraadt     <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("deraadt", name, from, filter=filter, language=language) }
problem     <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("problem", name, from, filter=filter, language=language) }
cocksplat   <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("cocksplat", name, from, filter=filter, language=language) }
too         <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("too", from, filter=filter, language=language) }

asshole     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("asshole", from, filter=filter, language=language) }
cup         <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("cup", from, filter=filter, language=language) }
fyyff       <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("fyyff", from, filter=filter, language=language) }
immensity   <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("immensity", from, filter=filter, language=language) }
programmer  <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("programmer", from, filter=filter, language=language) }
rtfm        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("rtfm", from, filter=filter, language=language) }
thinking    <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("thinking", name, from, filter=filter, language=language) }

bag         <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("bag", from, filter=filter, language=language) }
equity      <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("equity", name, from, filter=filter, language=language) }
fts         <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("fts", name, from, filter=filter, language=language) }
ing         <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("ing", name, from, filter=filter, language=language) }
particular  <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("particular", name, from, filter=filter, language=language) }
ridiculous  <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("ridiculous", from, filter=filter, language=language) }
shit        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("shit", from, filter=filter, language=language) }

even        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("even", from, filter=filter, language=language) }
fewer       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("fewer", name, from, filter=filter, language=language) }
ftfy        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("ftfy", from, filter=filter, language=language) }
holygrail   <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("holygrail", from, filter=filter, language=language) }
idea        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("idea", from, filter=filter, language=language) }
jinglebells <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("jinglebells", from, filter=filter, language=language) }
legend_     <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("legend", name, from, filter=filter, language=language) }
logs        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("logs", from, filter=filter, language=language) }
ratsarse    <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("ratsarse", from, filter=filter, language=language) }
rockstar    <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("rockstar", name, from, filter=filter, language=language) }
waste       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("waste", name, from, filter=filter, language=language) }

absolutely  <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("absolutely", name, from, filter=filter, language=language) }
dense       <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("dense", from, filter=filter, language=language) }
dumbledore  <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("dumbledore", from, filter=filter, language=language) }
lowpoly     <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("lowpoly", from, filter=filter, language=language) }
understand  <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas("understand", name, from, filter=filter, language=language) }
yeah        <- function(from=.from(), filter=.filter(), language=.language())                      { .foaas("yeah", from, filter=filter, language=language) }

## catch-all
thing       <- function(name, from=.from(), filter=.filter(), language=.language())                { .foaas(name, from, filter=filter, language=language) }

getRandomFO <- function(name, from=.from(), filter=.filter(), language=.language()) {

    name_from <- c(
        "off",		"you",		"donut",	"shakespeare",	"linus" ,	"king",		"chainsaw",
        "outside",	"madison",	"nugget",	"yoda",		"xmas",		"bday",		"shutup",
        "dalton",	"thumbs",	"back",		"bm",		"gfy",		"greed",	"think",
        "keep",		"look", 	"pulp",		"anyway", 	"blackadder", 	"deraadt", 	"problem",
        "cocksplat",    "thinking",     "equity",       "fts",          "ing",          "particular",	"fewer",
        "legend_",      "rockstar",     "waste",	"absolutely",	"understand"
    )

    just_from <-  c(
        "this",		"that",		"everything",	"everyone",	"thanks",	"flying",	"fascinating",
        "cool",		"what",		"because",	"bye",		"diabetes",	"bus",		"awesome",
        "tucker",	"bucket",	"family_",	"zayn",		"retard",	"me",		"mornin",
        "single_",	"looking",	"no",		"give",		"zero",		"sake", 	"maybe",
        "horse", 	"too",		"asshole",	"cup",		"fyyff",	"immensity",	"programmer",
        "rtfm",         "bag",          "ridiculous",   "shit", 	"even",         "ftfy",         "holygrail",
        "idea",         "jinglebells",  "logs",         "ratsarse",	"dense",	"dumbledore",	"lowpoly",
        "yeah"
    )

    req <- sample(c(just_from, name_from), 1)

    if (req %in% just_from){
        .foaas(req, from, filter=filter, language=language)
    } else if (req %in% name_from){
        .foaas(req, name, from, filter=filter, language=language)
    }

}
