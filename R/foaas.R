##  rfoaas -- An R interface to the FOAAS service
##
##  Copyright (C) 2014 - 2015  Dirk Eddelbuettel <edd@debian.org>
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

.foaas <- function(..., filter=.filter()) {

    ## -- The following used to work when foaas.com was running with text/plain in default
    ##
    #req <- URLencode(paste(..., sep="/"))     	         	# collate arguments and encode
    #con <- url(paste0("http://foaas.herokuapp.com/", req)) 	# form url and create connection
    #res <- readLines(con, n=n, warn=FALSE)       		# read one line from connection
    #close(con)                                                 # clean connection
    #Encoding(res) <- "UTF-8"    				# server-side is UTF-8, needed on Windows 
    #res
    ##
    ## -- but now we have to explicitly request it via accept headers, so we need http::GET
    
    #srv <- "http://foaas.herokuapp.com"
    srv <- "http://foaas.com"
    req <- URLencode(paste(srv, ..., sep="/"))     	        # collate arguments and encode
    req <- paste0(req, switch(filter,
                              "none"="",
                              "shoutcloud"="?shoutcloud"))
    res <- GET(req, accept("text/plain"))
    txt <- content(res, "text", encoding="utf-8")
    txt
}

.from <- function() {
    getOption("rfoaasFrom", Sys.info()["user"])
}

.filter <- function(filter=c("none", "shoutcloud")) {
    filter <- getOption("rfoaasFilter", "none")
    filter <- match.arg(filter)
}

## 'meta' query one -- returns a version string
version     <- function()                      { .foaas("version") }

## 'meta' query two -- returns JSON object descriting name, url, and fields on available queries
## As this returns JSON, use RJSONIO or jsonlite to deal with the result
operations  <- function()                      { .foaas("operations") }

off         <- function(name, from=.from(), filter=.filter())    { .foaas("off", name, from, filter=filter) }
you         <- function(name, from=.from(), filter=.filter())    { .foaas("you", name, from, filter=filter) }
this        <- function(from=.from(), filter=.filter())          { .foaas("this", from, filter=filter) }
that        <- function(from=.from(), filter=.filter())          { .foaas("that", from, filter=filter) }
everything  <- function(from=.from(), filter=.filter())          { .foaas("everything", from, filter=filter) }
everyone    <- function(from=.from(), filter=.filter())          { .foaas("everyone", from, filter=filter) }
donut       <- function(name, from=.from(), filter=.filter())    { .foaas("donut", name, from, filter=filter) }
shakespeare <- function(name, from=.from(), filter=.filter())    { .foaas("shakespeare", name, from, filter=filter) }
linus       <- function(name, from=.from(), filter=.filter())    { .foaas("linus", name, from, filter=filter) }
king        <- function(name, from=.from(), filter=.filter())    { .foaas("king", name, from, filter=filter) }
pink        <- function(name, filter=.filter())                  { .foaas("pink", name, filter=filter) }
life        <- function(name, filter=.filter())                  { .foaas("life", name, filter=filter) }
chainsaw    <- function(name, from=.from(), filter=.filter())    { .foaas("chainsaw", name, from, filter=filter) }
outside     <- function(name, from=.from(), filter=.filter())    { .foaas("outside", name, from, filter=filter) }
thanks      <- function(from=.from(), filter=.filter())          { .foaas("thanks", from, filter=filter) }
flying      <- function(from=.from(), filter=.filter())          { .foaas("flying", from, filter=filter) }
fascinating <- function(from=.from(), filter=.filter())          { .foaas("fascinating", from, filter=filter) }
madison     <- function(name, from=.from(), filter=.filter())    { .foaas("madison", name, from, filter=filter) }
cool        <- function(from=.from(), filter=.filter())          { .foaas("cool", from, filter=filter) }
field       <- function(name, from=.from(), reference, filter=.filter())
                                               { .foaas("field", name, from, reference, filter=filter) }
nugget      <- function(name, from=.from(), filter=.filter())    { .foaas("nugget", name, from, filter=filter) }
yoda        <- function(name, from=.from(), filter=.filter())    { .foaas("yoda", name, from, filter=filter) }
ballmer     <- function(name, company, from=.from(), filter=.filter())
                                               { .foaas("ballmer", name, company, from, filter=filter) }
what        <- function(from=.from(), filter=.filter())          { .foaas("what", from, filter=filter) }
because     <- function(from=.from(), filter=.filter())          { .foaas("because", from, filter=filter) }
caniuse     <- function(tool, from=.from(), filter=.filter())    { .foaas("caniuse", tool, from, filter=filter) }
bye         <- function(from=.from(), filter=.filter())          { .foaas("bye", from, filter=filter) }
diabetes    <- function(from=.from(), filter=.filter())          { .foaas("diabetes", from, filter=filter) }
bus         <- function(from=.from(), filter=.filter())          { .foaas("bus", from, filter=filter) }
xmas        <- function(name, from=.from(), filter=.filter())    { .foaas("xmas", name, from, filter=filter) }
awesome     <- function(from=.from(), filter=.filter())          { .foaas("awesome", from, filter=filter) }
## catch-all 
thing       <- function(name, from=.from(), filter=.filter())    { .foaas(name, from, filter=filter) }

