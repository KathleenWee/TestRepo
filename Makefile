all: sp_500_returns.png

sp_500_yearend.csv: download.R
	Rscript download.R

sp_500_returns.csv: sp_500_yearend.csv calculat_returns.R
	Rscript calculat_returns.R

sp_500_returns.png: sp_500_returns.csv plot.R
	Rscript plot.R