library(jpeg)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "image_file.jpg", mode = "wb")

instructorImage <- readJPEG("image_file.jpg", native = TRUE)

instructorQuantiles <- quantile(instructorImage, probs = c(0.3, 0.8))