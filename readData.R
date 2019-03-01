## This R script reads the information from the text file and formats it

library(lubridate)

## Assign the path name & set the working directory

##path <- "/OneDrive - CEMEX/Training/Data Science/Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption"
##path <- parse(getwd(),path)
##setwd(path)

## Read the data and save it into the measure dataset

measure <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE,
                      skip = 66637, nrows = 2881)

## Read the data and save it into the measure dataset

features <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE,
                       nrows = 1)

## Extract the names of the columns and save it into the features variables

features <- as.vector(unlist(features))


## Change the column names of the dataset

colnames(measure) <- features

## Add a new column named fullDate that merges the Date and Time column

measure$fullDate <- "0"

    for(i in 1:nrow(measure)){
        
        measure$fullDate[i] <- paste(measure$Date[i], measure$Time[i], sep = " ")
    
    }

## Change the format of the fullDate

measure$fullDate <- gsub("/", "-", measure$fullDate)

measure$fullDate <- dmy_hms(measure$fullDate)

## Rearrange the columns order

measure <- measure[,c(1,2,10,3:9)]