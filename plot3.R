plot3 <- function(){
### Script for the first programming assignment for Coursera's "Exploratory Data Analysis"
# PART 3
###
library(lubridate)
library(dplyr)
Sys.setlocale("LC_TIME", "en_GB")
# load data 
# NOTE : the file "exdata-data-household_power_consumption.zip" has to be downloaded and placed in working directory
df <- read.table(unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt"), sep=";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
D <- df[ df$Date == "1/2/2007" | df$Date == "2/2/2007" ,]
# plot and save
t <- strptime(paste(D$Date,D$Time),"%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480, height=480)
plot(t,D$Sub_metering_1, ylab = "Energy sub metering",xlab = "", type = "l")
lines(t,D$Sub_metering_2, col = "red")
lines(t,D$Sub_metering_3, col = "blue")
legend("topright", pch = , lty=c(1,1,1), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), 
       col=c("black","blue","red"))
dev.off()  
}