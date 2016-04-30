# Course Project Codebook

This is a code book that describes the variables, the data, and any transformations that was performed during analysis.

# Original data

Original dataset can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

A full description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

It is separated into 2 parts: train data and test data. The features are unlabeled, and the subject IDs and activity labels are in separate files. 

# Transformation steps

R language and R Studio were used to perform analysis. The analysis can be divided in several steps:

1. Load required packages into R
2. Create data directory if necessary
3. Download and unzip data if necessary
4.1. Reading train data 
4.2. Reading test data
4.3. Reading column names and activity names
5.1. Merge the train and the test data sets
5.2. Extract only the measurements on the mean and standard deviation
5.3. Give descriptive activity names
5.4. Appropriately label the data set with descriptive variable names
6.1. Add subject IDs
6.2. Create a data set with the average of each variable for each activity and each subject
7. Saving new tidy datasets

# Run.R variables descriprion

Tidy run.csv dataset contains 68 variables and 10299 measurments for each of them. 

Mean and standart deviation features:
*Note: features are normalized and bounded within [-1,1]*
- "tBodyAcc_Mean_X"       
- "tBodyAcc_Mean_Y"       
- "tBodyAcc_Mean_Z"      
- "tBodyAcc_Std_X"        
- "tBodyAcc_Std_Y"       
- "tBodyAcc_Std_Z"       
- "tGravityAcc_Mean_X"   
- "tGravityAcc_Mean_Y"   
- "tGravityAcc_Mean_Z"   
- "tGravityAcc_Std_X"   
- "tGravityAcc_Std_Y"    
- "tGravityAcc_Std_Z"    
- "tBodyAccJerk_Mean_X"  
- "tBodyAccJerk_Mean_Y"  
- "tBodyAccJerk_Mean_Z"  
- "tBodyAccJerk_Std_X"   
- "tBodyAccJerk_Std_Y"   
- "tBodyAccJerk_Std_Z"   
- "tBodyGyro_Mean_X"     
- "tBodyGyro_Mean_Y"     
- "tBodyGyro_Mean_Z"     
- "tBodyGyro_Std_X"      
- "tBodyGyro_Std_Y"      
- "tBodyGyro_Std_Z"      
- "tBodyGyroJerk_Mean_X" 
- "tBodyGyroJerk_Mean_Y" 
- "tBodyGyroJerk_Mean_Z" 
- "tBodyGyroJerk_Std_X"  
- "tBodyGyroJerk_Std_Y"  
- "tBodyGyroJerk_Std_Z"  
- "tBodyAccMag_Mean"     
- "tBodyAccMag_Std"      
- "tGravityAccMag_Mean"  
- "tGravityAccMag_Std"   
- "tBodyAccJerkMag_Mean" 
- "tBodyAccJerkMag_Std"  
- "tBodyGyroMag_Mean"    
- "tBodyGyroMag_Std"    
- "tBodyGyroJerkMag_Mean"
- "tBodyGyroJerkMag_Std" 
- "fBodyAcc_Mean_X"     
- "fBodyAcc_Mean_Y"      
- "fBodyAcc_Mean_Z"      
- "fBodyAcc_Std_X"      
- "fBodyAcc_Std_Y"       
- "fBodyAcc_Std_Z"      
- "fBodyAccJerk_Mean_X"  
- "fBodyAccJerk_Mean_Y"  
- "fBodyAccJerk_Mean_Z"  
- "fBodyAccJerk_Std_X"  
- "fBodyAccJerk_Std_Y"   
- "fBodyAccJerk_Std_Z"   
- "fBodyGyro_Mean_X"    
- "fBodyGyro_Mean_Y"     
- "fBodyGyro_Mean_Z"     
- "fBodyGyro_Std_X"      
- "fBodyGyro_Std_Y"      
- "fBodyGyro_Std_Z"      
- "fBodyAccMag_Mean"     
- "fBodyAccMag_Std"      
- "fBodyAccJerkMag_Mean" 
- "fBodyAccJerkMag_Std"  
- "fBodyGyroMag_Mean"    
- "fBodyGyroMag_Std"    
- "fBodyGyroJerkMag_Mean" 
- "fBodyGyroJerkMag_Std" 
- "activity" - labelled types of performed activies           
- "subjectId" - ID of each subject, who performed in the experiment

# Run_ave.R variables description

Run_ave.R contains average values for 66 features of the run dataset. Average values were calculated for easg subject and each activity. 
There are 180 groups in total. 