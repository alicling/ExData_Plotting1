#read the data
> datafile<-"./data/household_power_consumption.txt"
> data<-read.table(datafile,header = TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
> head(data)

#subset data
> subsetdata<-data[data$Date%in%c("1/2/2007","2/2/2007"),]
> head(subsetdata)
> globalactivepower<-as.numeric(subsetdata$Global_active_power)
> datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#plot2
> png("plot2.png", width=480, height=480)
> plot(datetime, globalactivepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()
