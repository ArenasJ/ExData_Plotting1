## This R scripts creates the file "plot3.png"

## First we load the data set using the readData.R script

if(!file.exists("readData.R")){
    path = "C:/Users/JARENASSN/OneDrive - CEMEX/Training/Data Science/Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption"
    setwd(path)
}

source("readData.R")


## Change the working directory where plot 3 will be stored

setwd("Plot 3")

## Create plot 3

png(filename = "plot3.png", width = 480, height = 480)

plot(measure$fullDate, measure$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "n")


lines(measure$fullDate, measure$Sub_metering_2, col = "red")
lines(measure$fullDate, measure$Sub_metering_3, col = "blue")
lines(measure$fullDate, measure$Sub_metering_1, col = "black")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))

dev.off()