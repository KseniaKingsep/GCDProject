# Load packages
library(dplyr)
library(tidyr)

# Create data directory if necessary
if (!dir.exists("./data")) {
  dir.create("./data")
}

# Download and unzip data if necessary
if (!dir.exists("./data/UCI HAR Dataset")) {
  fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile="./data/run.zip")
  unzip("./data/run.zip", exdir="./data")
  unlink("./data/run.zip")
}

# PREPARATION - loading datasets into R

# 0.1. Reading train data 
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names="activityNum")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names="subjectId")


# 0.2. Reading test data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names="activityNum")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names="subjectId")

# 0.3. Reading column names and activity names
features  <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)[[2]]
activityNames <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names=c("activityNum", "activity"))

# CREATING A TIDY DATASET - main part

# 1.1. Merge the train and the test datasets.
run <- rbind(x_train, x_test) # merge datasets
colnames(run) <- features # give columns descriptive names

# 1.2. Extract only the measurements on the mean and standard deviation
extr <- features[grepl("std\\()|mean\\()", features)]
run <- run[,extr]

# 1.3. Use descriptive activity names
activityNums <- rbind(y_train, y_test)
activityData <- merge(activityNums, activityNames, by="activityNum", sort=FALSE)[["activity"]]
run$activity <- activityData

# 1.4. Appropriately label the dataset with descriptive variable names
colnames(run) <- gsub("\\(\\)", "", colnames(run))
colnames(run) <- gsub("-", "_", colnames(run))
colnames(run) <- gsub("BodyBody", "Body", colnames(run))
colnames(run) <- gsub("mean", "Mean", colnames(run))
colnames(run) <- gsub("std", "Std", colnames(run))

# 1.5.1. Add subject ids
run$subjectId <- rbind(subject_train, subject_test)[[1]]

# 1.5.2. Create a dataset with the average of each variable for each activity and each subject
run_ave <- run %>% group_by(subjectId, activity) %>% summarise_each(funs(mean))

# 1.6. Saving new datasets
write.table(run_ave, file = "run_ave.txt",row.name = FALSE)
write.table(run, file = "run.txt",row.name = FALSE)