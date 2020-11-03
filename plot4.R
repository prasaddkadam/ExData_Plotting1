#reading data
data <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                   na.strings = "?", sep = ';', quote = "")
data$DateTime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

#plot4
#png('plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2)) 
#plots from left to right, top to bottom (since you used mfrow vs mfcol)

#plot 4a = plot 1
plot(x = data$DateTime, y = data$Global_active_power, 
     type = 'l', xlab = NA, ylab = 'Global Active Power')

#plot 4b
plot(x = data$DateTime, y = data$Voltage, 
     type = 'l', xlab = 'datetime', ylab = 'Voltage')

#plot 4c = plot 3
plot(x = data$DateTime, y = data$Sub_metering_1, type = 'l',
     xlab = NA, ylab = 'Energy sub metering')
lines(x = data$DateTime, y = data$Sub_metering_2, col = 'red')
lines(x = data$DateTime, y = data$Sub_metering_3, col = 'blue')
legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lwd = 1, bty = 'n')

#plot 4d
plot(x = data$DateTime, y = data$Global_reactive_power, type = 'l',
     xlab = 'datetime', ylab = 'Global_reactive_power')