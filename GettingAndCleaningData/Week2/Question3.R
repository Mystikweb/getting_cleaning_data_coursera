library(sqldf)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "community_survey.csv")
acs <- read.csv("community_survey.csv")

r_unique_values <- unique(acs$AGEP)

sql_unique_values <- sqldf("select distinct AGEP from acs")