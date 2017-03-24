##read in data from previous step
spx.returns <- read.csv("sp_500_returns.csv")

## Plot the yearly returns
library(ggplot2)
ggplot(spx.returns, aes(x = Year, y= Return)) + geom_point()

ggsave("sp_500_returns.png") ##saves the latest ggplot graphic
