## Get dataset and subsetting
mydata = read.table("household_power_consumption.txt", sep =";", na.strings = "?", header = TRUE, stringsAsFactors=FALSE)
sub_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

#plot4
sub_mydata$datetime <- strptime(paste(sub_mydata$Date, sub_mydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
par(mfrow = c(2,2))
plot(sub_mydata$datetime, sub_mydata$Global_active_power, type = "l", ylab = " Global Active Power ", xlab ="")
plot(sub_mydata$datetime, sub_mydata$Voltage, type = "l", ylab = " Voltage ", xlab ="datetime")
plot(sub_mydata$datetime, sub_mydata$Sub_metering_1, type = "l", ylab = " Energy sub metering ", xlab ="")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_2, type = "l", col = "red")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty = "n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(sub_mydata$datetime, sub_mydata$Global_reactive_power, type = "l", ylab = " Global_reactive_power ", xlab ="datetime")


#png plot4
png(filename = "plot4.png",width = 480, height = 480)
par(mfrow = c(2,2))
plot(sub_mydata$datetime, sub_mydata$Global_active_power, type = "l", ylab = " Global Active Power ", xlab ="")
plot(sub_mydata$datetime, sub_mydata$Voltage, type = "l", ylab = " Voltage ", xlab ="datetime")
plot(sub_mydata$datetime, sub_mydata$Sub_metering_1, type = "l", ylab = " Energy sub metering ", xlab ="")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_2, type = "l", col = "red")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty = "n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(sub_mydata$datetime, sub_mydata$Global_reactive_power, type = "l", ylab = " Global_reactive_power ", xlab ="datetime")
dev.off()