## Get dataset and subsetting
mydata = read.table("household_power_consumption.txt", sep =";", na.strings = "?", header = TRUE, stringsAsFactors=FALSE)
mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")
sub_mydata <- subset(mydata, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


#plot1
hist(sub_mydata$Global_active_power, col ="red", main = "Global Active Power", xlab = " Global Active Power (kilowatts)")

#png plot1
png(filename = "plot1.png",width = 480, height = 480)
hist(sub_mydata$Global_active_power, col ="red", main = "Global Active Power", xlab = " Global Active Power (kilowatts)")
dev.off()