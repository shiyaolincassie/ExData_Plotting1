Data<-read.csv("E:/US/STUDY/Coursera/R/exploratory analysis/household_power_consumption.txt",sep = ";")
data<-subset(Data,Data$Date %in% c("1/2/2007","2/2/2007"))

globalactivepower<-as.numeric(data$Global_active_power)
Time<-strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(Time,globalactivepower,ylab="global active power(kilowatts)",type="l")

dev.off()