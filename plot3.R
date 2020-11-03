#reading data
data <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                   na.strings = "?", sep = ';', quote = "")
data$DateTime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

#plot3
plot(x = data$DateTime, y = data$Sub_metering_1, type = 'l',
     xlab = NA, ylab = 'Energy sub metering')
lines(x = data$DateTime, y = data$Sub_metering_2, col = 'red')
lines(x = data$DateTime, y = data$Sub_metering_3, col = 'blue')
legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lwd = 1)
