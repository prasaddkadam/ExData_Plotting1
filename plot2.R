#reading data
data <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                   na.strings = "?", sep = ';', quote = "")
data$DateTime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

#plot2
plot(x = data$DateTime, y = data$Global_active_power, 
     type = 'l', xlab = NA, ylab = 'Global Active Power (kilowatts)')
