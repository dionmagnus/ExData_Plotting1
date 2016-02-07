source('load_and_prepare_data.R')

#Setting png file graphic device
png(filename = "plot4.png")

#Setting the plot area size
par(mfrow=c(2,2))
#Note: the day of weeks on the plot depend on your locale. For me it is russian.

#The first plot
with(mainDataSubset, plot(Datetime, Global_active_power, type = 'l', ylab = "Global Active Power (kilowats)", xlab = ""))

#The second plot
with(mainDataSubset, plot(Datetime, Voltage, type = 'l', ylab = "Voltage", xlab = "datetime"))

#The third plot
with(mainDataSubset, plot(Datetime, Sub_metering_1, type="l", ylab = "Enetry sub metering", xlab = ""))
with(mainDataSubset, points(Datetime, Sub_metering_2, type="l", col = "red"))
with(mainDataSubset, points(Datetime, Sub_metering_3, type="l", col = "blue"))
legend("topright", legend = c("Sub_meter_1", "Sub_meter_2", "Sub_meter_3"), lty = c(1, 1, 1), col=c("black", "red", "blue"))

#The fourth plot
with(mainDataSubset, plot(Datetime, Global_reactive_power, type = 'l', ylab = "Global Reactive Power", xlab = "datetime"))
dev.off()

