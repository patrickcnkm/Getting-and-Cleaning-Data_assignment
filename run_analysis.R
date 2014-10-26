

## Loading the package for the coming usages such as "join" etc.
library(plyr)

## Set the working folder.
setwd("C:/My Documents/My Private/01_Myself/01_Learning/03_IT/Data Science/04_Getting and cleaning data/Assignment")

## Read the feature and activity label into R
feature<-read.table(file="./UCI HAR Dataset/features.txt",sep=" ")
activity.labels<-read.table(file="./UCI HAR Dataset/activity_labels.txt",sep=" ")
names(activity.labels)<-c("activity","label")

################# Begin of handling training data############################

## Read the train data (subject,activity,detail data) into R
train.subject<-read.table(file="./UCI HAR Dataset/train/subject_train.txt")
train.activity<-read.table(file="./UCI HAR Dataset/train/y_train.txt")
train.data<-read.table(file="./UCI HAR Dataset/train/x_train.txt")

## assign the meaningful column names for the above uploaded tables - subject, activity, and detail dataset.
names(train.subject)[1]<-"subject"
names(train.activity)[1]<-"activity"
names(train.data)<-feature[,2]

## Join the tables between activity and activity label to be ready to replace the activity with lable.
train.activity<-join(train.activity,activity.labels)

## Remove the activity code from the able after joining.
train.activity<-train.activity[,-1]

## combine the columns with subject, activity lable, data type (train or test), and detail mean and std data
train.data<-cbind(train.subject,train.activity,type="train",train.data[,grep("mean",names(train.data))],train.data[,grep("std",names(train.data))])

## Correct the name of column activity since the above column dropping caused the column name change.
names(train.data)[2]<-"activity"

################# End of handling training data#############################

################# Begin of handling test data###############################

## Read the test data (subject,activity,detail data) into R
test.subject<-read.table(file="./UCI HAR Dataset/test/subject_test.txt")
test.activity<-read.table(file="./UCI HAR Dataset/test/y_test.txt")
test.data<-read.table(file="./UCI HAR Dataset/test/x_test.txt")

## Standardize the column names for subject, activity, and detail dataset.
names(test.subject)[1]<-"subject"
names(test.activity)[1]<-"activity"
names(test.data)<-feature[,2]

## Join the tables between activity and activity label to be ready to replace the activity with lable.
test.activity<-join(test.activity,activity.labels)

## Remove the activity code from the able after joining.
test.activity<-test.activity[,-1]

## combine the columns with subject, activity lable, data type (train or test), and detail mean and std data
test.data<-cbind(test.subject,test.activity,type="test",test.data[,grep("mean",names(test.data))],test.data[,grep("std",names(test.data))])

## Correct the name of column activity since the above column dropping caused the column name change.
names(test.data)[2]<-"activity"

################# End of handling test data#################################

## Combine both training data and test data.
full.data<-rbind(train.data,test.data)

## Calculate the mean group by subject and activity
mean.data<-aggregate(full.data[,c(4:ncol(full.data))],by=full.data[,c(1:2)],FUN=mean)

## Display the data ordering by subject and activity
mean.data<-arrange(mean.data,subject,activity)

## Output the data as txt and row.names=FALSE.
write.table(mean.data,file="mean.txt",sep=",",row.names=FALSE)