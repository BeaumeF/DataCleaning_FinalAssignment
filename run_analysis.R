## Download file
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <- "getdata_dataset.zip"
download.file(fileURL, filename)
unzip(filename)

## Reading tables (train, test)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

features <- read.table("./UCI HAR Dataset/features.txt")
activityLabels = read.table("./UCI HAR Dataset/activity_labels.txt")

## 1. Merge
fusion_subject <- rbind(subject_test, subject_train)
fusion_activity <- rbind(y_test, y_train)
fusion_features <- rbind(x_test, x_train)

# Give names
names(fusion_subject) <- c("subject")
names(fusion_activity) <- c("activity")
names(fusion_features) <- features$V2

# Tout combiner
subdata <- cbind(fusion_subject, fusion_activity)
data <- cbind(fusion_features, subdata)


## 2. Extract Mean and standard deviation
Q2a <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
Q2b <- data[,Q2a[,1]]

## Labels the data
names(Q2b)<-gsub("^t", "time", names(Q2b))
names(Q2b)<-gsub("^f", "frequency", names(Q2b))
names(Q2b)<-gsub("Acc", "Accelerometer", names(Q2b))
names(Q2b)<-gsub("Gyro", "Gyroscope", names(Q2b))
names(Q2b)<-gsub("Mag", "Magnitude", names(Q2b))
names(Q2b)<-gsub("BodyBody", "Body", names(Q2b))


## Write file in the end
## install and/or load "plyr"
Data2<-aggregate(. ~subject + activity, data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "finaldata.txt",row.name=FALSE)