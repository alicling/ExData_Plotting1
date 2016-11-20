# read the data
> datafile<-"./data/household_power_consumption.txt"
> data<-read.table(datafile,header = TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
> head(data)
#subsetdata
> subsetdata<-data[data$Date%in%c("1/2/2007","2/2/2007"),]
> head(subsetdata)
> globalactivepower<-as.numeric(subsetdata$Global_active_power)
> datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
> submetering1<-as.numeric(subsetdata$Sub_metering_1)
> submetering2<-as.numeric(subsetdata$Sub_metering_2)
> submetering3<-as.numeric(subsetdata$Sub_metering_3)
# plot3
> png("plot3.png", width=480, height=480)
> plot(datetime,submetering1,ylab = "Energy sub metering",xlab = "",type = "l")
> lines(datetime,submetering2,type="l",col="red")
> lines(datetime,submetering3,type="l",col="blue")
> legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd = 2.5,col = c("black","red","blue"))
> dev.off()
