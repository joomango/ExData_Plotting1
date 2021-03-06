> table <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
> table[,1] <- as.Date(table[,1], format="%d/%m/%Y”)
> table2 <- subset(table, Date=="2007-02-01"|Date=="2007-02-02")
> hist(table2[,3]/1000, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
> png("homework1.png", width=480, height=480)
> hist(table2[,3]/1000, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
> dev.off()
