download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "survey.csv")
surveyData <- read.csv("survey.csv")

topPropertyValueCount <- nrow(surveyData[surveyData$VAL == 24,])
print(topPropertyValueCount)

library(xlsx)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile = "naturalgasaquisition.xlsx", mode = "wb")
dat <- read.xlsx("naturalgasaquisition.xlsx", sheetIndex = 1, startRow = 18, endRow = 23, colIndex = c(7:15))
print(sum(dat$Zip * dat$Ext, na.rm = TRUE))

library(XML)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", destfile = "restaurant_data.xml", mode = "wb")
restaurantData <- xmlTreeParse("restaurant_data.xml", useInternalNodes = TRUE)
restaurantRoot <- xmlRoot(restaurantData)
zipCodeData <- xpathSApply(restaurantRoot, "//zipcode", xmlValue)
print(length(which(zipCodeData == "21231")))

library(data.table)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "community_survey.csv")
DT <- fread("community_survey.csv")

testRowMeans <- function(DT) {
    rowMeans(DT)[DT$SEX == 1];
    rowMeans(DT)[DT$SEX == 2]
}

testMeans <- function(DT) {
    mean(DT[DT$SEX == 1,]$pwgtp15);
    mean(DT[DT$SEX == 2,]$pwgtp15)
}

print(system.time(sapply(split(DT$pwgtp15, DT$SEX), mean)))
#print(system.time(testRowMeans(DT)))
print(system.time(testMeans(DT)))
print(system.time(DT[, mean(pwgtp15), by = SEX]))
print(system.time(mean(DT$pwgtp15, by = DT$SEX)))
print(system.time(tapply(DT$pwgtp15, DT$SEX, mean)))

