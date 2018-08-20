##  runTestsAgainstFOOAS --- simple Continuous Integration tests
##
##  Copyright (C) 2015 - 2018  Dirk Eddelbuettel <edd@debian.org>
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
if (Sys.getenv("RunFOAASTests") == "yes") runTests <- TRUE

## Also run the tests when building on Dirk's box, even whem
## the environment variable is not set
## if (isTRUE(unname(Sys.info()["user"])=="edd")) runTests <- TRUE

if (runTests) {

    library(rfoaas)

    ## placeholders
    name      <- "Someone"
    from      <- "Me"
    reference <- "Something somewhere"
    company   <- "XYZ Corp"
    tool      <- "Some magic thing"
    do        <- "Get"
    something <- "Something"
    reaction  <- "do not panic"

    ## basic operations
    stopifnot(off         (name=name, from=from)  == "Fuck off, Someone. - Me")
    stopifnot(you         (name=name, from=from)  == "Fuck you, Someone. - Me")
    stopifnot(this        (from=from)             == "Fuck this. - Me")
    stopifnot(that        (from=from)             == "Fuck that. - Me")
    stopifnot(everything  (from=from)             == "Fuck everything. - Me")
    stopifnot(everyone    (from=from)             == "Everyone can go and fuck off. - Me")
    stopifnot(donut       (name=name, from=from)  == "Someone, go and take a flying fuck at a rolling donut. - Me")
    stopifnot(shakespeare (name=name, from=from)  == "Someone, Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch! - Me")
    stopifnot(linus       (name=name, from=from)  == "Someone, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap. - Me" )
    stopifnot(king        (name=name, from=from)  == "Oh fuck off, just really fuck off you total dickface. Christ, Someone, you are fucking thick. - Me" )
    stopifnot(pink        (name=name)             == "Well, fuck me pink. - Someone")
    stopifnot(life        (name=name)             == "Fuck my life. - Someone")
    stopifnot(chainsaw    (name=name, from=from)  == "Fuck me gently with a chainsaw, Someone. Do I look like Mother Teresa? - Me")
    stopifnot(outside     (name=name, from=from)  == "Someone, why don't you go outside and play hide-and-go-fuck-yourself? - Me")
    stopifnot(thanks      (from=from)             == "Fuck you very much. - Me")
    stopifnot(flying      (from=from)             == "I don't give a flying fuck. - Me")
    stopifnot(fascinating (from=from)             == "Fascinating story, in what chapter do you shut the fuck up? - Me")
    stopifnot(madison     (name=name, from=from)  == "What you've just said is one of the most insanely idiotic things I have ever heard, Someone. At no point in your rambling, incoherent response were you even close to anything that could be considered a rational thought. Everyone in this room is now dumber for having listened to it. I award you no points Someone, and may God have mercy on your soul. - Me")
    stopifnot(cool        (from=from)             == "Cool story, bro. - Me")
    stopifnot(field       (name=name, from=from,
                           reference=reference)   == "And Someone said unto Me, 'Verily, cast thine eyes upon the field in which I grow my fucks', and Me gave witness unto the field, and saw that it was barren. - Something somewhere")

    stopifnot(nugget      (name=name, from=from)  == "Well Someone, aren't you a shining example of a rancid fuck-nugget. - Me")
    stopifnot(yoda        (name=name, from=from)  == "Fuck off, you must, Someone. - Me")
    stopifnot(ballmer     (name=name, company=company,
                           from=from)             == "Fucking Someone is a fucking pussy. I'm going to fucking bury that guy, I have done it before, and I will do it again. I'm going to fucking kill XYZ Corp. - Me")

    stopifnot(what        (from=from)             == "What the fuck‽ - Me")
    stopifnot(because     (from=from)             == "Why? Because fuck you, that's why. - Me")
    stopifnot(caniuse     (tool=tool, from=from)  == "Can you use Some magic thing? Fuck no! - Me")
    stopifnot(bye         (from=from)             == "Fuckity bye! - Me")
    stopifnot(diabetes    (from=from)             == "I'd love to stop and chat to you but I'd rather have type 2 diabetes. - Me")
    stopifnot(bus         (from=from)             == "Fuck bus. - Me")
    stopifnot(xmas        (name=name, from=from)  == "Merry Fucking Christmas, Someone. - Me")
    stopifnot(awesome     (from=from)             == "This is Fucking Awesome. - Me")

    stopifnot(tucker      (from=from)             == "Come the fuck in or fuck the fuck off. - Me")
    stopifnot(bucket      (from=from)             == "Please choke on a bucket of cocks. - Me")
    stopifnot(bday        (name=name, from=from)  == "Happy Fucking Birthday, Someone. - Me")
    stopifnot(family_     (from=from)             == "Fuck you, your whole family, your pets, and your feces. - Me")
    stopifnot(shutup      (name=name, from=from)  == "Someone, shut the fuck up. - Me")
    stopifnot(zayn        (from=from)             == "Ask me if I give a motherfuck ?!! - Me")
    stopifnot(keepcalm    (reaction=reaction,
                           from=from)             == "Keep the fuck calm and do not panic! - Me")
    stopifnot(dalton      (name=name, from=from)  == "Someone: A fucking problem solving super-hero. - Me")
    stopifnot(dosomething (do=do, something=something,
                           from=from)             == "Get the fucking Something! - Me")
    stopifnot(off_with    (name=name, from=from)  == "Fuck off with Someone - Me")
    stopifnot(retard      (from=from)             == "You Fucktard! - Me")
    stopifnot(thumbs      (name=name, from=from)  == "Who has two thumbs and doesn't give a fuck? Someone. - Me")
    stopifnot(back        (name=name, from=from)  == "Someone, back the fuck off. - Me")
    stopifnot(bm          (name=name, from=from)  == "Bravo mike, Someone. - Me")
    stopifnot(gfy         (name=name, from=from)  == "Golf foxtrot yankee, Someone. - Me")
    stopifnot(greed       (something=something,
                           from=from)             == "The point is, ladies and gentleman, that something -- for lack of a better word -- is good. Something is right. Something works. Something clarifies, cuts through, and captures the essence of the evolutionary spirit. Something, in all of its forms -- Something for life, for money, for love, knowledge -- has marked the upward surge of mankind. - Me")

    stopifnot(me          (from=from)             == "Fuck me. - Me")
    stopifnot(mornin      (from=from)             == "Happy fuckin' mornin'! - Me")

    stopifnot(think	  (name=name, from=from)  == "Someone, you think I give a fuck? - Me")
    stopifnot(keep	  (name=name, from=from)  == "Someone: Fuck off. And when you get there, fuck off from there too. Then fuck off some more. Keep fucking off until you get back here. Then fuck off again. - Me")
    stopifnot(single_	  (from=from)             == "Not a single fuck was given. - Me")
    stopifnot(look	  (name=name, from=from)  == "Someone, do I look like I give a fuck? - Me")
    stopifnot(looking     (from=from)             == "Looking for a fuck to give. - Me")
    stopifnot(no          (from=from)             == "No fucks given. - Me")
    stopifnot(give        (from=from)             == "I give zero fucks. - Me")
    stopifnot(zero        (from=from)             == "Zero, thats the number of fucks I give. - Me")
    stopifnot(pulp	  (name=name, from=from)  == "Someone, motherfucker, do you speak it? - Me")
    stopifnot(sake        (from=from)             == "For Fuck's sake! - Me")
    stopifnot(anyway      (name=name, from=from)  == "Who the fuck are you anyway, Someone, why are you stirring up so much trouble, and, who pays you? - Me")
    stopifnot(maybe       (from=from)             == "Maybe. Maybe not. Maybe fuck yourself. - Me")
    stopifnot(blackadder  (name=name, from=from)  == "Someone, your head is as empty as a eunuch’s underpants. Fuck off! - Me")
    stopifnot(horse       (from=from)             == "Fuck you and the horse you rode in on. - Me")
    stopifnot(deraadt     (name=name, from=from)  == "Someone you are being the usual slimy hypocritical asshole... You may have had value ten years ago, but people will see that you don't anymore. - Me")
    stopifnot(problem     (name=name, from=from)  == "What the fuck is your problem Someone? - Me")
    stopifnot(cocksplat   (name=name, from=from)  == "Fuck off Someone, you worthless cocksplat - Me")
    stopifnot(too         (from=from)             == "Thanks, fuck you too. - Me")

    stopifnot(asshole	  (from=from)             == "Fuck you, asshole. - Me")
    stopifnot(cup	  (from=from)             == "How about a nice cup of shut the fuck up? - Me")
    stopifnot(fyyff	  (from=from)             == "Fuck you, you fucking fuck. - Me")
    stopifnot(immensity	  (from=from)             == "You can not imagine the immensity of the FUCK I do not give. - Me")
    stopifnot(programmer  (from=from)  		  == "Fuck you, I'm a programmer, bitch! - Me")
    stopifnot(rtfm	  (from=from)	  	  == "Read the fucking manual! - Me")
    stopifnot(thinking    (name=name, from=from)  == "Someone, what the fuck were you actually thinking? - Me")

    stopifnot(bag         (from=from)             == "Eat a bag of fucking dicks. - Me")
    stopifnot(equity      (name=name, from=from)  == "Equity only? Long hours? Zero Pay? Well Someone, just sign me right the fuck up. - Me")
    stopifnot(fts         (name=name, from=from)  == "Fuck that shit, Someone. - Me")
    stopifnot(ing         (name=name, from=from)  == "Fucking fuck off, Someone. - Me")
    stopifnot(particular  (name=name, from=from)  == "Fuck this Someone in particular. - Me")
    stopifnot(ridiculous  (from=from)             == "That's fucking ridiculous - Me")
    stopifnot(shit        (from=from)             == "Fuck this shit! - Me")

    stopifnot(thing       (name=name, from=from)  == "Fuck Someone. - Me")

    ## shoutcloud
    stopifnot(off         (name=name, from=from, filter="shoutcloud")  == "FUCK OFF, SOMEONE. - ME")

    ## language
    #stopifnot(off         (name=name, from=from, language="de")  == ""Fuck off jemand. - Me")

    ## shoutcloud and language -- cannot test, responses change
    #stopifnot(off         (name=name, from=from, filter="shoutcloud", language="de")  == "FUCK OFF JEMAND. - ME")

    ## cover randomFO
    set.seed(123)
    stopifnot(getRandomFO(name=name, from=from)  == "You Fucktard! - Me")

    set.seed(42)
    stopifnot(getRandomFO(name="Someone", from="Me") == "Who the fuck are you anyway, Someone, why are you stirring up so much trouble, and, who pays you? - Me")

    v <- version()
    op <- operations()
    print(getRandomFO(name=name))

}

