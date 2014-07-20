dat = read.table("household_power_consumption.txt",header=F, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), sep=";", na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric" ), skip=66637, nrows=2880) 

datFormat <- within(dat, Time <- strptime(paste(as.character(Date), Time, sep=" "), "%d/%m/%Y %H:%M:%S"))
datFormat <- within(datFormat, Date <- as.Date(Date, "%d/%m/%Y"))

hist(x3$Global_active_power, col="#FF2500", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()