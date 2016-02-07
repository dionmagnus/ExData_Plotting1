source('load_and_prepare_data.R')

#Setting png file graphic device
png(filename = "plot3.png")
par(mfrow=c(1,1)) #Just to be shure

#Building a three line plot
#Note: the day of weeks on the plot depend on your locale. For me it is russian.
par(mar=c(2,4,2,2))
with(mainDataSubset, plot(Datetime, Sub_metering_1, type="l", ylab = "Enetry sub metering"))
with(mainDataSubset, points(Datetime, Sub_metering_2, type="l", col = "red"))
with(mainDataSubset, points(Datetime, Sub_metering_3, type="l", col = "blue"))
legend("topright", legend = c("Sub_meter_1", "Sub_meter_2", "Sub_meter_3"), lty = c(1, 1, 1), col=c("black", "red", "blue"))
dev.off()
