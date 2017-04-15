library(sqldf)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "community_survey.csv")
acs <- read.csv("community_survey.csv")

result_data <- sqldf("select pwgtp1 from acs where AGEP < 50")