setwd("~/Desktop/Coursera4/WEEK 1/Project")
dat <- read.csv("data.csv")
head(dat)
png(file = "plot1.png", width = 480, height = 480)
hist(dat$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", 
     xaxt = "n", yaxt = "n")
axis(side = 1, at = c(0, 2, 4, 6))
axis(side = 2, at = seq(0, 1400, 200))
dev.off()

#hist(dat$Global_active_power, col = "red", main = "Global Active Power",
#     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", 
#     ylim = c(0, 1400))

