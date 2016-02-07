#creating the data folder
dataRootDir <- "data"
if(!dir.exists(dataRootDir)) {dir.create(dataRootDir)}

#downloading the datafile
dataZipFile <- "data/household_data.zip"
if(!file.exists(dataZipFile)) {
    # loading data
    dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(dataUrl, "data/household_data.zip", method = "curl")
}

#extracting data
dataFile <- "data/household_power_consumption.txt"
if(!file.exists(dataFile)) {
    unzip(dataZipFile, exdir = dataRootDir)
}

#reading data
dataColClasses <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
mainDataSet <- read.csv(dataFile, sep = ";", na.strings = "?", colClasses = dataColClasses)

#converting the Date column to the Date type
mainDataSet$Datetime <- strptime(paste(mainDataSet$Date, mainDataSet$Time), format = "%d/%m/%Y %H:%M:%S")

mainDataSubset <- mainDataSet[mainDataSet$Datetime > as.POSIXlt("2007-02-01") & mainDataSet$Datetime < as.POSIXlt("2007-02-03"),]
