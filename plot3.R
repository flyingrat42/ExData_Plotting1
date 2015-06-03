plot3 <- function () {
  
  source("loadData.R")
  
  #Get data
  powerdata<-loadData()
  
  png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
  with(powerdata, plot(x=DateTime, y=Sub_metering_1,col="black",type="l", xlab = "", ylab = "Energy sub metering"))
  with(powerdata, lines(x=DateTime,y=Sub_metering_2,col="red"))
  with(powerdata, lines(x=DateTime,y=Sub_metering_3,col="blue"))
  legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
  dev.off()
  
}