##  rfoaas -- An R interface to the FOAAS service
##
##  Copyright (C) 2014 Dirk Eddelbuettel <edd@debian.org>
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

.foaas <- function(..., n=1) {
    req <- URLencode(paste(..., sep="/"))     	         	# collate arguments and encode
    con <- url(paste0("http://foaas.herokuapp.com/", req)) 	# form url and create connection
    res <- readLines(con, n=n, warn=FALSE)       		# read one line from connection
    close(con)
    res
}

## 'meta' query one -- returns a version string
version     <- function()                      { .foaas("version") }

## 'meta' query two -- returns JSON object descriting name, url, and fields on available queries
## As this returns JSON, use RJSONIO or jsonlite to deal with the result
operations  <- function()                      { .foaas("operations", n=-1) }

off         <- function(name, from)            { .foaas("off", name, from) }
you         <- function(name, from)            { .foaas("you", name, from) }
this        <- function(from)                  { .foaas("this", from) }
that        <- function(from)                  { .foaas("that", from) }
everything  <- function(from)                  { .foaas("everything", from) }
everyone    <- function(from)                  { .foaas("everyone", from) }
donut       <- function(name, from)            { .foaas("donut", name, from) }
shakespeare <- function(name, from)            { .foaas("shakespeare", name, from) }
linus       <- function(name, from)            { .foaas("linus", name, from) }
king        <- function(name, from)            { .foaas("king", name, from) }
pink        <- function(name)                  { .foaas("pink", name) }
life        <- function(name)                  { .foaas("life", name) }
chainsaw    <- function(name, from)            { .foaas("chainsaw", name, from) }
outside     <- function(name, from)            { .foaas("outside", name, from) }
thing       <- function(name, from)            { .foaas(name, from) }
thanks      <- function(from)                  { .foaas("thanks", from) }
flying      <- function(from)                  { .foaas("flying", from) }
fascinating <- function(from)                  { .foaas("fascinating", from) }
madison     <- function(name, from)            { .foaas("madison", name, from) }
cool        <- function(from)                  { .foaas("cool", from) }
field       <- function(name, from, reference) { .foaas("field", name, from, reference) }
nugget      <- function(name, from)            { .foaas("nugget", name, from) }
yoda        <- function(name, from)            { .foaas("yoda", name, from) }
ballmer     <- function(name, company, from)   { .foaas("ballmer", name, company, from) }
what        <- function(from)                  { .foaas("what", from) }
because     <- function(from)                  { .foaas("because", from) }
caniuse     <- function(tool, from)            { .foaas("caniuse", tool, from) }


