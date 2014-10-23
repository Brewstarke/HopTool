library(XML)

# Pull data from BeerLegends.com
# 

beerlegends <- "http://beerlegends.com/hops-varieties"
tables <- readHTMLList(beerlegends)
hoplist <- unlist(list(tables[2:4]))
hoplist
