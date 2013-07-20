
.foaas <- function(...) {
    req <- paste(..., sep="/")
    con <- url(paste0("http://foaas.com/", req))
    res <- readLines(con, n=1, warn=FALSE)
    close(con)
    res
}

off         <- function(name, from) { .foaas("off", name, from) }
you         <- function(name, from) { .foaas("you", name, from) }
this        <- function(from)       { .foaas("this", from) }
that        <- function(from)       { .foaas("that", from) }
everything  <- function(from)       { .foaas("everything", from) }
everyone    <- function(from)       { .foaas("everyone", from) }
donut       <- function(name, from) { .foaas("donut", name, from) }
shakespeare <- function(name, from) { .foaas("shakespeare", name, from) }
linus       <- function(name, from) { .foaas("linus", name, from) }
king        <- function(name, from) { .foaas("king", name, from) }
pink        <- function(name, from) { .foaas("pink", name, from) }
life        <- function(name, from) { .foaas("life", name, from) }
chainsaw    <- function(name, from) { .foaas("chainsaw", name, from) }
thing       <- function(from)       { .foaas("thing", from) }
thanks      <- function(from)       { .foaas("thanks", from) }
