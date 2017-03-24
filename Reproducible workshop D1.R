#download data
spx <- read.csv("https://asda.stat.ubc.ca/workshops/data/sp500_yearend.csv")

#head(spx) - comment it out because it's not part of the actual workflow

## calculate the yearly returns
yoy.returns <- diff(spx$Close)/spx$Close[-nrow(spx)]

## Plot the yearly returns
library(ggplot2)
ggplot(data.frame(year =spx$Year[-1], return = yoy.returns), aes(x = year, y= return)) + geom_point()

ggsave("sp_500_returns.png") ##saves the latest ggplot graphic

##can save each step as separate scripts but you need to remember to add both the source data and output data in order to execute the steps separately.
##Make files are very strict with syntax and capitalization; also needs to be tab-delimited; can use wild cards
##Packrat records all packages used by the project, including version (need to use this for all the projects from now on!) makes it very easy to share projects with collaborators
##Packrat is also very compatible with GitHub
##A quick guide to organizing computational biology projects - paper to read!
##

