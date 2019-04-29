source("read_data.R")

hpc_r <- read_data()

# Open PNG graphic device
png(filename = "plot3.png", height = 480, width = 480)
plot(hpc_r$Time,hpc_r$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(hpc_r$Time,hpc_r$Sub_metering_2,col="red")
lines(hpc_r$Time,hpc_r$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col = c("black","red","blue"))

# Close PNG graphic device
dev.off()
