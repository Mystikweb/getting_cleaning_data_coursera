download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "idaho_survey.csv")
ids <- read.csv("idaho_survey.csv")

split_names <- strsplit(names(ids), "wgtp")

print(split_names[123])
