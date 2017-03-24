##read in the data
spx <- read.csv("sp_500_yearend.csv")

##Plot the data
library(ggplot2)
ggplot(spx, aes(x = Year, y = Close)) + geom_point()

ggsave("sp_500_yearend_closing.png")