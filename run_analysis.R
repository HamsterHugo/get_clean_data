## Import the dplyr library
library(dplyr)

## Load train data set
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
## Load test data set
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
## Load the column names
feature_names <- read.table("UCI HAR Dataset/features.txt")
## Load the activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
## Load the subject data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
## Merge the activity colum
activity_col <- rbind(y_train,y_test)
names(activity_col) <- "Activity"
for (i in 1:6) {
  activity_col$Activity <- gsub(i,activity_labels[i,2],activity_col$Activity)
}

## Merge the subject column
subject_col <- rbind(subject_train,subject_test)
names(subject_col) <- "Subject"

## Merge the train and test data
data <- rbind(X_train,X_test)
names(data) <- feature_names[,"V2"]
col_num <- grep("mean|std",feature_names$V2)
data2 <- data[,col_num]

## Label the variables
feature_names <- grep("mean|std",feature_names$V2,value=TRUE)
feature_names <- gsub("BodyBody","Body",feature_names)
feature_names <- gsub("^f","f ",feature_names)
feature_names <- gsub("^t","t ",feature_names)
feature_names <- gsub("mean","Mean",feature_names)
feature_names <- gsub("std","Std",feature_names)
feature_names <- gsub("\\(\\)","",feature_names)
feature_names <- gsub("Body","Body ",feature_names)
feature_names <- gsub("Gravity","Gravity ",feature_names)
feature_names <- gsub("AccJerk","Acc Jerk",feature_names)
feature_names <- gsub("GyroJerk","Gyro Jerk",feature_names)
feature_names <- gsub("AccMag","Acc Mag",feature_names)
feature_names <- gsub("GyroMag","Gyro Mag",feature_names)
feature_names <- gsub("JerkMag","Jerk Mag",feature_names)
feature_names <- gsub("MeanFreq","Mean Freq",feature_names)
feature_names <- gsub("-"," ",feature_names)

names(data2) <- feature_names

## Add the activity and subject column
data2 <- cbind(activity_col,data2)
data2 <- cbind(subject_col,data2)

## Create the final data set
df <- tibble(data2)
by_sub <- group_by(df,Subject,Activity)
final_data <- summarise_all(by_sub,mean)

## Save the final data set in a txt file
write.table(final_data,file="tidy_data_set.txt")
View(final_data)