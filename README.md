## rfoaas: R interface to the [FOAAS][foaas] service 

[![CI](https://github.com/eddelbuettel/rfoaas/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rfoaas/actions?query=workflow%3Aci)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.r-project.org/Licenses/GPL-2) 
[![CRAN](https://www.r-pkg.org/badges/version/rfoaas)](https://cran.r-project.org/package=rfoaas) 
[![Dependencies](https://tinyverse.netlify.app/badge/rfoaas)](https://cran.r-project.org/package=rfoaas) 
[![r-universe](https://eddelbuettel.r-universe.dev/badges/rfoaas)](https://eddelbuettel.r-universe.dev/rfoaas)
[![Downloads](https://cranlogs.r-pkg.org/badges/rfoaas?color=brightgreen)](https://www.r-pkg.org/pkg/rfoaas) 
[![Code Coverage](https://codecov.io/gh/eddelbuettel/rfoaas/graph/badge.svg)](https://app.codecov.io/gh/eddelbuettel/rfoaas)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rfoaas)](https://github.com/eddelbuettel/rfoaas)

### Where

You can install released version of the package from
[CRAN](https://cran.r-project.org/) using the

```{.r}
install.packages("rfoaas")
```
function.

### Example

Just like [FOAAS][foaas] / [FOASS][foass], the package provides a number of
standard profanity-issuing access points, as well as some less profane
classics from pop culture:

```{.r}
R> greed("R Programming", "Random R Hacker")
The point is, ladies and gentleman, that r programming -- for lack of a better word -- is 
good. R Programming is right. R Programming works. R Programming clarifies, cuts through, 
and captures the essence of the evolutionary spirit. R Programming, in all of its forms -- R 
Programming for life, for money, for love, knowledge -- has marked the upward surge of 
mankind. - Random R Hacker 
R> 
```

This shows the default print method as action as well which wraps long paragraphs.

Since version 0.1.6, internationalization is taken more seriously, so if you
want to express the preceeding message even more lovingly in German, you can
do so:

```{.r}
R> greed("R Programming", "Random R Hacker", language="de")
Der Punkt ist, meine Damen und Herren, dass r-Programmierung - in Ermangelung eines besseren 
Wortes - ist gut. R-Programmierung richtig ist. R-Programmierung funktioniert. R 
Programmierung stellt klar, durchschneidet, und fängt die Essenz des evolutionären Geistes. 
R Programmierung, in all seinen Formen - R-Programmierung für das Leben, für Geld, für die 
Liebe, Wissen - hat die Aufwärtsschub der Menschheit geprägt. - Random R Hacker 
R> 
```

As the [FOAAS][foaas] service is on hiatus, we are plugging the gap with (partial) replacement
[FOASS][foass]. Endpoints not supported by the latter have been commented out, a few new ones have
been added and the expectations encoded in the test file have been updated.

### Who

Dirk Eddelbuettel

### License

GPL (>= 2) as most of my code though a case could be made for aligning with
the [WTFPL](https://www.wtfpl.net/) license that the
[FOAAS code](https://github.com/tomdionysus/foaas/) is under. 

### Contributor Code of Conduct

This project adheres to No Code of Conduct.  We are all adults.  We accept anyone's contributions.
Nothing else matters.

For more information please visit the [No Code of Conduct](https://github.com/domgetter/NCoC) page.

[foaas]: https://foaas.io
