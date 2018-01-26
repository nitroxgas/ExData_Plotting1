#Read a table skipping all unecessary lines
household <- read.table(file = "household_power_consumption.txt", sep = ";", na.strings = "?", header = FALSE, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), skip = 66637, nrows = 2880)

# Adjust the Date variable
household$Date <- as.Date(household$Date, format = "%d/%m/%Y")
#household$Date <- strptime(paste(household$Date,household$Time), "%Y-%m-%d %H:%M:%S")
household$Date <- as.POSIXct(paste(household$Date,household$Time))

#household$Global_active_power <- as.numeric(household$Global_active_power)
