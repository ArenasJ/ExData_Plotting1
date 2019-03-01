## This R scripts creates the file "plot4.png"

## First we load the data set using the readData.R script

if(!file.exists("readData.R")){
    path = "C:/Users/JARENASSN/OneDrive - CEMEX/Training/Data Science/Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption"
    setwd(path)
}

source("readData.R")

## Set the working dorectory where plot4 will be stored

setwd("Plot 4")



## Create plot 4

png(filename = "plot4.png", width = 480, height = 480)

par(mfcol = c(2,2))

## Plot1

plot(measure$fullDate, measure$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "n")
lines(measure$fullDate, measure$Global_active_power)

## Plot2

plot(measure$fullDate, measure$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "n")


lines(measure$fullDate, measure$Sub_metering_2, col = "red")
lines(measure$fullDate, measure$Sub_metering_3, col = "blue")
lines(measure$fullDate, measure$Sub_metering_1, col = "black")

legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))


## Plot 3

plot(measure$fullDate, measure$Voltage, xlab = "datetime", ylab = "Voltage",
     type = "n")
lines(measure$fullDate, measure$Voltage)

## Plot 4

plot(measure$fullDate, measure$Global_reactive_power, xlab ="datetime",
     type = "n")

lines(measure$fullDate, measure$Global_reactive_power)

dev.off()