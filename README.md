# rfoaas [![Build Status](https://travis-ci.org/eddelbuettel/rfoaas.svg)](https://travis-ci.org/eddelbuettel/rfoaas) [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) [![CRAN](http://www.r-pkg.org/badges/version/rfoaas)](http://cran.r-project.org/package=rfoaas) [![Downloads](http://cranlogs.r-pkg.org/badges/rfoaas?color=brightgreen)](http://www.r-pkg.org/pkg/rfoaas)

R interface to the [FOAAS](http://foaas.com) service 

## Where

You can install released version of the package from
[CRAN](http://cran.r-project.org/) using the
```{.r}
install.packages("rfoaas")
```
function.

## Example

Just like [FOAAS](http://www.foaas.com), the package provides a number of
standard profanity-issuing access points:

```{.r}
R> off("Tom", "Harry")
[1] "Fuck off, Tom. - Harry"
```

Since version 0.1.6, internationalization is taken more seriously, so if you
want to express the preceeding message even more lovingly in Finnish, you can
do so:

```{.r}
R> off("Tom", "Harry", language="fi")
[1] "Vittuun, Tom. - Harry"
R> 
```

## Who

Dirk Eddelbuettel

## License

GPL (>= 2) as most of my code though a case could be made for aligning with
the [WTFPL](http://www.wtfpl.net/) license that the
[FOAAS code](https://github.com/tomdionysus/foaas/) is under. 
