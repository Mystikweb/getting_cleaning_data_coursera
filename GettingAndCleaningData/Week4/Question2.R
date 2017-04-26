download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "gdp_download.csv")

gdp_stats <- read.csv("gdp_download.csv",
                      header = FALSE,
                      skip = 5,
                      nrows = 190,
                      colClasses = c("character", "integer", "NULL", "character", "character", rep("NULL", 5)),
                      col.names = c("CountryCode", "Ranking", "NULL", "CountryDescription", "Amount", rep("NULL", 5)))

gdp_stats[, "Amount"] <- as.numeric(gsub(",", "", gdp_stats[, "Amount"]))

print(mean(gdp_stats$Amount))