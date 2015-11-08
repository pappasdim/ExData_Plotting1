## Get dataset and subsetting
mydata = read.table("household_power_consumption.txt", sep =";", na.strings = "?", header = TRUE, stringsAsFactors=FALSE)
sub_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

#plot2
sub_mydata$datetime <- strptime(paste(sub_mydata$Date, sub_mydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(sub_mydata$datetime, sub_mydata$Global_active_power, type = "l", ylab = " Global Active Power (kilowatts)", xlab ="")

#png plot2
png(filename = "plot2.png",width = 480, height = 480)
plot(sub_mydata$datetime, sub_mydata$Global_active_power, type = "l", ylab = " Global Active Power (kilowatts)", xlab ="")
dev.off()