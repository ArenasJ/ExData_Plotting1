## This R scripts creates the file "plot2.png"

## First we load the data set using the readData.R script

if(!file.exists("readData.R")){
    path = "C:/Users/JARENASSN/OneDrive - CEMEX/Training/Data Science/Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption"
    setwd(path)
}

source("readData.R")

## Set the working directory where plot2 will be stored

setwd("Plot 2")
## Create the plot
png(filename = "plot2.png", width = 480, height = 480)

plot(measure$fullDate, measure$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "n")
lines(measure$fullDate, measure$Global_active_power)


## Close the current working device
dev.off()