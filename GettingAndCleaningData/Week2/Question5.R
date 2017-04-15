download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for", destfile = "sst_weekly_data.for")
swd <- read.fwf("sst_weekly_data.for", widths = c(10,9,4,9,4,9,4,9,4), skip = 4)

result <- sum(swd[,4])