
.foaas <- function(...) {
    req <- URLencode(paste(..., sep="/"))     	         	# collate arguments and encode
    con <- url(paste0("http://foaas.herokuapp.com/", req)) 	# form url and create connection
    res <- readLines(con, n=1, warn=FALSE)       		# read one line from connection
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
life        <- function(name)       { .foaas("life", name) }
chainsaw    <- function(name, from) { .foaas("chainsaw", name, from) }
thing       <- function(name, from) { .foaas(name, from) }
thanks      <- function(from)       { .foaas("thanks", from) }
flying      <- function(from)       { .foaas("flying", from) }
fascinating <- function(from)       { .foaas("fascinating", from) }
#madison     <- function(name, from) { .foaas("madison", name, from) }
