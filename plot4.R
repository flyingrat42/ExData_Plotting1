plot4 <- function () {
  
  source("loadData.R")
  
  #Get data
  powerdata<-loadData()
  
  png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
  
  par(mfrow = c(2, 2), mar = c(5, 4, 2, 1))
  
  # 1st plot (top left): same as Plot 2 with slightly different labeling
  with(powerdata, plot(x=DateTime, y=Global_active_power,type="l", xlab = "", ylab = "Global active power"))
  
  # 2nd plot (top right)
  with(powerdata, plot(x=DateTime, y=Voltage,type="l", xlab = "datetime", ylab = "Voltage"))
  
  # 3rd plot (bottom left)
  with(powerdata, plot(x=DateTime, y=Sub_metering_1,col="black",type="l", xlab = "", ylab = "Energy sub metering"))
  with(powerdata, lines(x=DateTime,y=Sub_metering_2,col="red"))
  with(powerdata, lines(x=DateTime,y=Sub_metering_3,col="blue"))
  legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty='n',col=c("black","red","blue"))
  
  # 4th plot (bottom right)
  with(powerdata, plot(x=DateTime, y=Global_reactive_power,type="l", xlab = "datetime", ylab = "Global_reactive_power"))
  
  
  dev.off()
  
}