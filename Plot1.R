Data<-read.csv("E:/US/STUDY/Coursera/R/exploratory analysis/household_power_consumption.txt",sep = ";")
data<-subset(Data,Data$Date %in% c("1/2/2007","2/2/2007"))

globalactivepower<-as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalactivepower,xlab="global active power(kilowatts)",main="Global Active Power",col="red")
dev.off()
