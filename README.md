# SigMate
# A game companion application for the tabletop RPG Sigmata
# written in POSIX shell scripting by Eric Lawson
# EmptyRespon.se

#Motd--
#Grim war-gods from remote ages have stalked upon the scene. International good faith; the public law of Europe; the greatest good of the greatest number; the ideal of a fertile, tolerant, progressive, demilitarized, infinitely varied society, is shattered. Dictators ride to and fro upon tigers from which they dare not dismount. And the tigers are getting hungry. 	Winston Churchill, Armistice--Or Peace? (1937)


#planned features/future releases-
#needs dossier content
#needs placeholder attribute tests replaced with actual tests
#needs remote way to modify popularity values
#main screen needs to be more 'dynamic' maybe with asynchronous tasks causing the screen to redraw?
#needs timer support (preferably with hourglass/lit fuse bomb)

#changelog follows

#r0.2 011118
#placeholders for #dossiers/chad and #dossiers/irving were added
#dossiers/blue was added -- Still needs attribution
#dossiers/daylight was added -- Still needs attribution
#dossier now cats "| more" by default
#screenDraw now accurately counts whitespace around playerName
#reputation values can be modified now
#signalState now has a sanity check
#new character generation has been added
#     122017
#screenDraw whitespace is no longer hardcoded.
#added pseudorandom number generator for d6, d10 rolls
#added login code to load character
#needs subroutine to save
#needs input sanitization for savefile names (<26 characters, all one case)
#needs prettyprint splash screen for login
#needs custom font including support for dossier pixelart
#added dossier input parsing
#needs multi-page support for dossiers
#needs keyInput logic for changing popularity values

#r0.1
#added placeholders for aggression, guile, judgement, valor checks.
#working tracker for signalstrength and reputations. no sanity checks in place.
#added help documentation and lorem ipsum dossier placeholder
