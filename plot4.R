setwd("~/Desktop/Coursera4/WEEK 1/Project")
dat <- read.csv("data.csv")
head(dat)
dat$Date <- strptime(dat$Date, "%Y-%m-%d %H:%M:%S")
png(file = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(dat$Date, dat$Global_active_power, type = "l", ylab = "Global Active power",
     xlab = "")
plot(dat$Date, dat$Voltage, xlab = "datetime", ylab = "Voltage", type = "l", yaxt = "n")
axis(side = 2, at = c(234, 238, 242, 246))
plot(dat$Date, dat$Sub_metering_1, type = "l", xlab = "", 
     ylab = "energy sub metering")
lines(dat$Date, dat$Sub_metering_2, type = "l", col = "red")
lines(dat$Date, dat$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(dat$Date, dat$Global_reactive_power, xlab = "datetime", ylab = " Global_reactive_power", type = "l")
dev.off()


