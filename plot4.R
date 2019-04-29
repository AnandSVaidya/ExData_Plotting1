source("read_data.R")

hpc_r <- read_data()

# Open PNG graphic device
png(filename = "plot4.png", height = 480, width = 480)
par(mfrow=c(2,2))
plot(hpc_r$Time, hpc_r$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(hpc_r$Time, hpc_r$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(hpc_r$Time,hpc_r$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(hpc_r$Time,hpc_r$Sub_metering_2,col="red")
lines(hpc_r$Time,hpc_r$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col = c("black","red","blue"))
plot(hpc_r$Time, hpc_r$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# Close PNG graphic device
dev.off()
