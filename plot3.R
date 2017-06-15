setwd("~/Desktop/Coursera4/WEEK 1/Project")
dat <- read.csv("data.csv")
head(dat)
dat$Date <- strptime(dat$Date, "%Y-%m-%d %H:%M:%S")
png(file = "plot3.png", width = 480, height = 480)
plot(dat$Date, dat$Sub_metering_1, type = "l", xlab = "", 
     ylab = "energy sub metering")
lines(dat$Date, dat$Sub_metering_2, type = "l", col = "red")
lines(dat$Date, dat$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()