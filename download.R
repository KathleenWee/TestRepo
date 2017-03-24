#download data
#print(sessionInfo())
spx <- read.csv("http://asda.stat.ubc.ca/workshops/data/sp500_yearend.csv")

#print("World")
write.csv(spx, "sp_500_yearend.csv")
