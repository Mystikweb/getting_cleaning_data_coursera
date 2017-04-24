download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "gdp_download.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "edu_download.csv")

gdp_stats <- read.csv("gdp_download.csv")
edu_stats <- read.csv("edu_download.csv")

column_intersects <- intersect(names(gdp_stats), names(edu_stats))

merged_stats <- merge(edu_stats, gdp_stats, by.x = "CountryCode", by.y = "X", all = TRUE)

