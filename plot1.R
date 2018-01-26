# Check if the data are available.
# If not, call a script to load and prepare the data
if ( !exists("household") ) {
        source("prep_data.R")        
}

# Set the device variables
par(mfrow=c(1,1))

# Draw...
hist(household$Global_active_power, freq = TRUE, col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (Kilowatts)", xlim = c(0,6), breaks = 13)

# Copy to PNG
dev.copy(png, file="plot1.png")
dev.off()
