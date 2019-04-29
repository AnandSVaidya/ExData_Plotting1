source("read_data.R")

hpc_r <- read_data()

# Open PNG graphic device
png(filename = "plot2.png", height = 480, width = 480)
plot(hpc_r$Time, hpc_r$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")

# Close PNG graphic device
dev.off()