Data<-read.csv("E:/US/STUDY/Coursera/R/exploratory analysis/household_power_consumption.txt",sep = ";")

data<-subset(Data,Data$Date %in% c("1/2/2007","2/2/2007"))

Time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
submerg1 <- as.numeric(data$Sub_metering_1)
submerg2 <- as.numeric(data$Sub_metering_2)
submerg3 <- as.numeric(data$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(Time, submerg1, type="l", ylab="Energy Submetering", xlab="")
lines(Time, submerg2, type="l", col="red")
lines(Time, submerg3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()