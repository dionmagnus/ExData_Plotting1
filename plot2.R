source('load_and_prepare_data.R')

#Setting png file graphic device
png(filename = "plot2.png")
par(mfrow=c(1,1))

#Plotting Global Active Power during two days
#Note: the day of weeks on the plot depend on your locale. For me it is russian.
plot(mainDataSubset$Datetime, mainDataSubset$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()