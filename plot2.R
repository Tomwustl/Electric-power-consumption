setwd("~/Desktop/Coursera4/WEEK 1/Project")
dat <- read.csv("data.csv")
head(dat)
dat$Date <- strptime(dat$Date, "%Y-%m-%d %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480)
plot(dat$Date, dat$Global_active_power,type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts")
dev.off()


