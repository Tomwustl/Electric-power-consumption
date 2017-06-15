setwd("~/Desktop/Coursera4/WEEK 1")
if (!file.exists("~/Desktop/Coursera4/WEEK 1/Project")){
  dir.create("~/Desktop/Coursera4/WEEK 1/Project")
}
dat <- read.table("household_power_consumption.txt", header = TRUE,sep = ";",
                  nrows = 2075259, na.strings = "?")
head(dat)
dat$Date <- strptime(paste(dat$Date, dat$Time), "%d/%m/%Y %H:%M:%S")


# Subset
datFeb <- subset(dat, Date == 01/02/2007)
