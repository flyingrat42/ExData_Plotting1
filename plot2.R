plot2 <- function () {
  
  source("loadData.R")
  
  #Get data
  powerdata<-loadData()
  
  png(filename= "plot2.png", width = 480, height = 480, bg = "transparent")
  with(powerdata, plot(x=DateTime, y=Global_active_power,type="l", xlab = "", ylab = "Global active power (kilowatts)"))
  
  dev.off()
}