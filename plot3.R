## Get dataset and subsetting
mydata = read.table("household_power_consumption.txt", sep =";", na.strings = "?", header = TRUE, stringsAsFactors=FALSE)
sub_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

#plot3
sub_mydata$datetime <- strptime(paste(sub_mydata$Date, sub_mydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(sub_mydata$datetime, sub_mydata$Sub_metering_1, type = "l", ylab = " Energy sub metering ", xlab ="")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_2, type = "l", col = "red")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#png plot3
png(filename = "plot3.png",width = 480, height = 480)
plot(sub_mydata$datetime, sub_mydata$Sub_metering_1, type = "l", ylab = " Energy sub metering ", xlab ="")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_2, type = "l", col = "red")
lines(sub_mydata$datetime, sub_mydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()