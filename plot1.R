source('load_and_prepare_data.R')

#Setting png file graphic device
png(filename = "plot1.png")
par(mfrow=c(1,1))

#Plotting a histogram
hist(mainDataSubset$Global_active_power, col = 'red', xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
