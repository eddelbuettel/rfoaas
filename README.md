## rfoaas [![Build Status](https://travis-ci.org/eddelbuettel/rfoaas.svg)](https://travis-ci.org/eddelbuettel/rfoaas) [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) [![CRAN](http://www.r-pkg.org/badges/version/rfoaas)](https://cran.r-project.org/package=rfoaas) [![Downloads](http://cranlogs.r-pkg.org/badges/rfoaas?color=brightgreen)](http://www.r-pkg.org/pkg/rfoaas) [![Code Coverage](https://codecov.io/gh/eddelbuettel/rfoaas/graph/badge.svg)](https://codecov.io/gh/eddelbuettel/rfoaas)

R interface to the [FOAAS](http://foaas.com) service 

### Where

You can install released version of the package from
[CRAN](https://cran.r-project.org/) using the
```{.r}
install.packages("rfoaas")
```
function.

### Example

Just like [FOAAS](https://www.foaas.com), the package provides a number of
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

Lastly, there is also an interface to [shoutcloud](http://shoutcloud.io/)
which provides the immensely useful ALL CAPS AS A SERVICE because, well,
sometimes you just got to yell:

```{.r}
R> greed("R Programming", "Random R Hacker", filter="shoutcloud")
THE POINT IS, LADIES AND GENTLEMAN, THAT R PROGRAMMING -- FOR LACK OF A BETTER WORD -- IS 
GOOD. R PROGRAMMING IS RIGHT. R PROGRAMMING WORKS. R PROGRAMMING CLARIFIES, CUTS THROUGH, 
AND CAPTURES THE ESSENCE OF THE EVOLUTIONARY SPIRIT. R PROGRAMMING, IN ALL OF ITS FORMS -- R 
PROGRAMMING FOR LIFE, FOR MONEY, FOR LOVE, KNOWLEDGE -- HAS MARKED THE UPWARD SURGE OF 
MANKIND. - RANDOM R HACKER 
R> 
```

### Who

Dirk Eddelbuettel

### License

GPL (>= 2) as most of my code though a case could be made for aligning with
the [WTFPL](http://www.wtfpl.net/) license that the
[FOAAS code](https://github.com/tomdionysus/foaas/) is under. 

### Contributor Code of Conduct

This project adheres to No Code of Conduct.  We are all adults.  We accept anyone's contributions.
Nothing else matters.

For more information please visit the [No Code of Conduct](https://nocodeofconduct.com) homepage.
