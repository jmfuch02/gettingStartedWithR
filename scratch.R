library(curl)
library(RCurl)
fileUrl <- "http://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv")
list.files("./data")
dateDownloaded <- date()
dateDownloaded

cameraData <- read.table("./data/cameras.csv",sep=",",header=TRUE)
head(cameraData)
