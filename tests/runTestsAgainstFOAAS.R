##  runTestsAgainstFOOAS --- simple Continuous Integration tests
##
##  Copyright (C) 2015  Dirk Eddelbuettel <edd@debian.org>
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

## By default, do not run the tests
## which also means do not run on CRAN
runTests <- FALSE

## Use the Travis / GitHub integrations as we set this
## environment variable to "yes" in .travis.yml
##
## Set this variable manually if you want to run the tests
##
if (Sys.getenv("RunFOAASTests=yes") == "yes") runTests <- TRUE

## Also run the tests when building on Dirk's box, even whem
## the environment variable is not set
if (isTRUE(unname(Sys.info()["user"])=="edd")) runTests <- TRUE

if (runTests) {

    library(rfoaas)

    ## placeholders
    name      <- "Someone"
    from      <- "Me"
    reference <- "Something somewhere"
    company   <- "XYZ Corp"
    tool      <- "Some magic thing"


    print(off         (name=name, from=from)    )
    #print(you         (name=name)          )
    print(this        (from=from)          )
    print(that        (from=from)          )
    print(everything  (from=from)          )
    print(everyone    (from=from)          )
    print(donut       (name=name, from=from)    )
    print(shakespeare (name=name, from=from)    )
    print(linus       (name=name, from=from)    )
    print(king        (name=name, from=from)    )
    print(pink        (name=name)                  )
    print(life        (name=name)                  )
    print(chainsaw    (name=name, from=from)    )
    print(outside     (name=name, from=from)    )
    print(thanks      (from=from)          )
    print(flying      (from=from)          )
    print(fascinating (from=from)          )
    print(madison     (name=name, from=from)    )
    print(cool        (from=from)          )
    print(field       (name=name, from=from, reference=reference))

    print(nugget      (name=name, from=from)    )
    print(yoda        (name=name, from=from)    )
    print(ballmer     (name=name, company=company, from=from))
    
    print(what        (from=from)          )
    print(because     (from=from)          )
    print(caniuse     (tool=tool, from=from)    )
    print(bye         (from=from)          )
    print(diabetes    (from=from)          )
    print(bus         (from=from)          )
    print(xmas        (name=name, from=from)    )
    
    print(thing       (name=name, from=from)    )

    invisible(NULL)
}

