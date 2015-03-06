plot2 <- function(){
  ### Script for the first programming assignment for Coursera's "Exploratory Data Analysis"
  # PART 2
  ###
  library(lubridate)
  library(dplyr)
  require(RCurl)
  Sys.setlocale("LC_TIME", "en_GB")
  # load data 
  bin <- getBinaryURL("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                    ssl.verifypeer=FALSE)
  con <- file("data.zip", open = "wb")
  writeBin(bin, con)
  close(con)
  df <- read.table(unz("data.zip", "household_power_consumption.txt"), sep=";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
  D <- df[ df$Date == "1/2/2007" | df$Date == "2/2/2007" ,]
  # plot and save
  png(file="plot2.png",width=480, height=480)
  plot(strptime(paste(D$Date,D$Time),"%d/%m/%Y %H:%M:%S"),D$Global_active_power, 
       ylab = "Global Active Power (kilowatts)",xlab = "", type = "l")
  dev.off()  
}