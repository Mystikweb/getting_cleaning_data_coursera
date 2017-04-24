download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "idaho_survey.csv")
ids <- read.csv("idaho_survey.csv")

agricultureLogical <- with(ids, ids$ACR == 3 & ids$AGS == 6)

print(head(which(agricultureLogical)))