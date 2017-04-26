download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "gdp_download.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "edu_download.csv")

gdp_stats <- read.csv("gdp_download.csv",
                      header = FALSE,
                      skip = 5,
                      nrows = 190,
                      colClasses = c("character", "integer", "NULL", "character", "character", rep("NULL", 5)),
                      col.names = c("CountryCode", "Ranking", "NULL", "CountryDescription", "Amount", rep("NULL", 5)))

edu_stats <- read.csv("edu_download.csv")

merged_stats <- merge(edu_stats, gdp_stats)

print(length(grep("^Fiscal year end: June", merged_stats$Special.Notes)))