library(data.table)
library(dplyr)

rd_xtest <- fread("UCI HAR Dataset/test/X_test.txt")
rd_subjecttest <- fread("UCI HAR Dataset/test/subject_test.txt")
rd_ytest <- fread("UCI HAR Dataset/test/y_test.txt")
rd_xtest <- rd_xtest[,subject:=rd_subjecttest]
rd_xtest <- rd_xtest[,y:=rd_ytest]


rd_xtrain <- fread("UCI HAR Dataset/train/X_train.txt")
rd_subjecttrain <- fread("UCI HAR Dataset/train/subject_train.txt")
rd_ytrain <- fread("UCI HAR Dataset/train/y_train.txt")
rd_xtrain <- rd_xtrain[,subject:=rd_subjecttrain]
rd_xtrain <- rd_xtrain[,y:=rd_ytrain]

raw_data <- rbind(rd_xtest,rd_xtrain)

rd_features <- fread("UCI HAR Dataset/features.txt")
rd_features <- rd_features[grepl("-std()",rd_features$V2,fixed = T) | 
                               grepl("-mean()", rd_features$V2,fixed = T)]

raw_data <- select(raw_data,c(rd_features$V1,562,563))

rd_activities <- fread("UCI HAR Dataset/activity_labels.txt")
raw_data <- merge(raw_data,rd_activities,by.x = "y",by.y = "V1")
raw_data$y <- NULL

colnames(raw_data) <- c(rd_features$V2,"Subject","Activity")

md_data <- melt(raw_data,id=c("Subject","Activity"))
tidy_data <- dcast(md_data,Subject + Activity ~...,mean)

write.table(tidy_data,"tdata.txt",row.names = FALSE)