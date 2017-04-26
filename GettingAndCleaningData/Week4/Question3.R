download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "gdp_download.csv")

gdp_stats <- read.csv("gdp_download.csv",
                      header = FALSE,
                      skip = 5,
                      nrows = 190,
                      colClasses = c("character", "integer", "NULL", "character", "character", rep("NULL", 5)),
                      col.names = c("CountryCode", "Ranking", "NULL", "CountryDescription", "Amount", rep("NULL", 5)))

print(length(grep("^United", gdp_stats$CountryDescription)))