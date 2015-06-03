loadData <- function () {
  
  #download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="household_power_consumption.zip",mode="wb")
  
  #unzip("household_power_consumption.zip")
  
  #install.packages("sqldf")
  library(sqldf)
  
  #Read in file, filtering by the dates we care about
  powerdata<-read.csv.sql(file="household_power_consumption.txt",sql="SELECT * FROM file WHERE Date = '1/2/2007' OR Date = '2/2/2007'",sep=";",stringsAsFactors=FALSE)
  
  powerdata$DateTime <- paste(powerdata$Date, powerdata$Time)
  powerdata$DateTime <- strptime(powerdata$DateTime, format="%d/%m/%Y %H:%M:%S")
  
  powerdata
}