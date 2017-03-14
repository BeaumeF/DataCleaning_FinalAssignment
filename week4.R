## WEEK4 QUIZ

## Question1
## DOWNLOAD
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url=fileurl, destfile="D:/SSync/OneDrive/FB/Formation Continu, Développement personnel/DataScience/Data Cleaning/Week4/data.csv")
DT <- read.csv("data.csv")
strsplit(names(DT), "wgtp")

## Question2
## DOWNLOAD
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url=fileurl, destfile="D:/SSync/OneDrive/FB/Formation Continu, Développement personnel/DataScience/Data Cleaning/Week4/data2.csv")
DT2 <- read.csv("data2.csv")

