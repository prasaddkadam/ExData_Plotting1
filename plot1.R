#reading data
data <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                      na.strings = "?", sep = ';', quote = "")

#plot1
hist(data$Global_active_power, col = 'red',
     main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)',
     xlim = c(0,6))
