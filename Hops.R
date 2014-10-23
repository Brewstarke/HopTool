library(XML)

# Pull data from BeerLegends.com
# 
# Find the best resources on the web....
beerlegends <- "http://beerlegends.com/hops-varieties"
hopunion <- "http://www.hopunion.com/hop-varieties/"

# Get links to each hop for each site- Parsing from reahHTMLList has issues.
beerlegendsLinks <- getHTMLLinks(beerlegends)
hop_links_BL.com <- beerlegendsLinks[9:219]

hopunionLinks <- getHTMLLinks(hopunion)
hop_links_HU.com <- hopunionLinks[38:159]

# create a list of links to pull data from for each hop
hoplisturls <-  paste("http://beerlegends.com", hop_links_BL.com, "-hops", sep="")
hoplisturls # Should contain the urls to all the hops in beerlegends database. 

