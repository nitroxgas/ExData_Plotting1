# Check if the data are available.
# If not, call a script to load and prepare the data
if ( !exists("household") ) {
        source("prep_data.R")        
}

# Set the device variables
par(mfrow=c(2,2))

# Draw...
with(household, 
     {  
             plot(Global_active_power~Date, type="l", ylab="Global Active Power", xlab="")
             plot(Voltage~Date, type="l", ylab="Voltage", xlab="datetime")
             plot(Sub_metering_1~Date,  type = "l" , ylab = "Energy sub metering", xlab="")
             lines(Sub_metering_2~Date, col = "red" )
             lines(Sub_metering_3~Date, col = "blue" )
             # Draw legend
             legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n" )
             plot(Global_reactive_power~Date, type="l", xlab="datetime")
     } )




# Copy to PNG
dev.copy(png, file="plot4.png")
dev.off()
