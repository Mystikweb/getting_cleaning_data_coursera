library(quantmod)
library(lubridate)

# demo data
amzn <- getSymbols("AMZN", auto.assign = FALSE)
sampleTimes <- index(amzn)

year_dates <- sampleTimes[year(sampleTimes) == 2012]

print(length(year_dates))

monday_dates <- year_dates[wday(year_dates, label = TRUE) == "Mon"]

print(length(monday_dates))