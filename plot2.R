# Check if the data are available.
# If not, call a script to load and prepare the data
if ( !exists("household") ) {
        source("prep_data.R")        
}

# Set the device variables
par(mfrow=c(1,1))

# Draw...
with(household, plot(Global_active_power~Date, ylab="Global Active Power (kilowatts)", xlab="", type="l"))

# Copy to PNG
dev.copy(png, file="plot2.png")
dev.off()
