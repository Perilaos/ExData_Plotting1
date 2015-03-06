plot1 <- function(){
  ### Script for the first programming assignment for Coursera's "Exploratory Data Analysis"
  # PART I
  ###
  library(lubridate)
  library(dplyr)
  require(RCurl)
  # load data 
  bin <- getBinaryURL("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                      ssl.verifypeer=FALSE)
  con <- file("data.zip", open = "wb")
  writeBin(bin, con)
  close(con)
  df <- read.table(unz("data.zip", "household_power_consumption.txt"), sep=";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
  D <- df[ df$Date == "1/2/2007" | df$Date == "2/2/2007" ,]
  png(file="plot1.png",width=480, height=480)
  hist(D$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
  dev.off()  
}