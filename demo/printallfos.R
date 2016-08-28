printallfos <- function(name='NAME', from='FROM', tool='R',
                        company='YOYODYNE', do='DEBUG',
                        something='R', reference='REFERENCE',
                        reaction='SWITCH TO R',
                        short=TRUE) {
    y <- lsf.str('package:rfoaas')
    y <- y[-which(y %in% c('operations', 'print.rfoaas', 'version'))]
    argnames <- names(formals())
    out <- list()
    if (short) y <- c('ballmer', 'madison')
    for (i in y) {
        arglist <- list()
        fnargs <- names(formals(i))
        for (j in argnames)
            if (length(grep(j, fnargs))>0) arglist[[j]] <- get(j)
        out[[i]] <- do.call(i, arglist)
    }
    return(out)
}

printallfos(short=TRUE)




