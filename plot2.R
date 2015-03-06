plot2 <- function(){
### Script for the first programming assignment for Coursera's "Exploratory Data Analysis"
# PART 2
###
library(lubridate)
library(dplyr)
Sys.setlocale("LC_TIME", "en_GB")
# load data 
# NOTE : the file "exdata-data-household_power_consumption.zip" has to be downloaded and placed in working directory
df <- read.table(unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt"), sep=";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
D <- df[ df$Date == "1/2/2007" | df$Date == "2/2/2007" ,]
# plot and save
png(file="plot2.png",width=480, height=480)
plot(strptime(paste(D$Date,D$Time),"%d/%m/%Y %H:%M:%S"),D$Global_active_power, 
     ylab = "Global Active Power (kilowatts)",xlab = "", type = "l")
dev.off()  
}