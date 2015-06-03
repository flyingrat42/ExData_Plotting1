plot1 <- function () {
  
  source("loadData.R")
 
  #Get data
  powerdata<-loadData()
  
  png(filename = "plot1.png", width = 480, height = 480, bg = "transparent")  
  hist(powerdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.off()
}