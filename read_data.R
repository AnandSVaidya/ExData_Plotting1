read_data <- function() {
  # Read data from file
  hpc <- read.table(file = "household_power_consumption.txt", 
                    sep = ";",
                    stringsAsFactors = FALSE,
                    colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                    header = TRUE,
                    na.strings = "?",
                    strip.white = TRUE)
  hpc$Time <- strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S")
  hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
  
  # Filter required data
  subset(hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
}