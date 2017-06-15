setwd("~/Desktop/Coursera4/WEEK 1")
if (!file.exists("~/Desktop/Coursera4/WEEK 1/Project")){
  dir.create("~/Desktop/Coursera4/WEEK 1/Project")
}

dat <- read.table("Project/household_power_consumption.txt", header = TRUE,sep = ";",
                  nrows = 2075259, na.strings = "?")
datFeb <- subset(dat, Date == "1/2/2007"|Date == "2/2/2007")
datFeb$Date <- strptime(paste(datFeb$Date, datFeb$Time), "%d/%m/%Y %H:%M:%S")
head(datFeb)
write.csv(datFeb, file = "Project/data.csv")
