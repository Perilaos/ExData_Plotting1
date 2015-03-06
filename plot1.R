plot1 <- function(){
### Script for the first programming assignment for Coursera's "Exploratory Data Analysis"
# PART I
###
library(lubridate)
library(dplyr)
# load data 
# NOTE : the file "exdata-data-household_power_consumption.zip" has to be downloaded and placed in working directory
df <- read.table(unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt"), sep=";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
D <- df[ df$Date == "1/2/2007" | df$Date == "2/2/2007" ,]
png(file="plot1.png",width=480, height=480)
hist(D$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()  
}