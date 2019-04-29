source("read_data.R")

hpc_r <- read_data()

# Open PNG graphic device
png(filename = "plot1.png", height = 480, width = 480)
hist(hpc_r$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# Close PNG graphic device
dev.off()