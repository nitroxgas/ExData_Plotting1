# Check if the data are available.
# If not, call a script to load and prepare the data
if ( !exists("household") ) {
        source("prep_data.R")        
}

# Set the device variables
par(mfrow=c(1,1))

# Draw...
with(household, 
     { 
        plot(Sub_metering_1~Date,  type = "l" , ylab = "Global Active Power (kilowatts)" )
        lines(Sub_metering_2~Date, col = "red" )
        lines(Sub_metering_3~Date, col = "blue" )
     } )

# Draw legend
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

# Copy to PNG
dev.copy(png, file="plot3.png")
dev.off()
