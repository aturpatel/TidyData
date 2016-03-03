library(dplyr)

#Reads in test data and train data
testData<-read.table("test/X_test.txt")
trainData<-read.table("train/X_train.txt")

#Changes column names to each feature in features.txt
features<-make.unique(as.character(read.table("features.txt")[,2]))
colnames(testData)<-features
colnames(trainData)<-features

#Add 2 columns with the user id number and the type of activity to test data
id<-read.table("test/subject_test.txt")[,1]
activity<-read.table("test/y_test.txt")[,1]
activityLabels<-read.table("activity_labels.txt")
activity<-sapply(activity, function(x) activityLabels[x,2])
testData<-mutate(testData, id=id, activity=activity)

#Add 2 columns with the user id number and the type of activity to train data
id<-read.table("train/subject_train.txt")[,1]
activity<-read.table("train/y_train.txt")[,1]
activity<-sapply(activity, function(x) activityLabels[x,2])
trainData<-mutate(trainData, id=id, activity=activity)

#Merge train and test data sets
mergeData<-rbind(trainData, testData)

#Selects only data about means and standard deviations
varianceData<-select(mergeData, id, activity, contains("mean"), contains("std"))

#Averages each variable for each activity/subject
avgData<- group_by(varianceData, id, activity) %>% summarize_each(funs(mean))
write.table(avgData, "TidyData", row.name=FALSE)