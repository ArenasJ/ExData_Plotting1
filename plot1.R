## This script creates the first plot called "plot1.png"

## First we load the data set using the readData.R script

if(!file.exists("readData.R")){
    path = "C:/Users/JARENASSN/OneDrive - CEMEX/Training/Data Science/Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption"
    setwd(path)
}

## Read the data

source("readData.R")

## Set the working directory where the plot will be stored

setwd("Plot 1")

## Open the graphic device

png(filename = "plot1.png", width = 480, height = 480)

## Create the histogram

hist(measure$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

## Close the device

dev.off()