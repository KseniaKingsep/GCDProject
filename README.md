
# Human Activity Recognition Using Smartphones Dataset - Coursera Getting and Cleaninng Data Project


## Introduction

This repo contains my Course Project for the Coursera *"Getting and Cleaning Data"* course. 

## About the raw data

The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

Original dataset can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

It is separated into 2 parts: train data and test data. The features are unlabeled, and the subject IDs and activity labels are in separate files. 

R language was used to combine and tidy the original dataset. 

## The task for this project

You should create one R script called run_analysis.R that does the following.

- Merges the training and the test sets to create one data set.

- Extracts only the measurements on the mean and standard deviation for each measurement.

- Uses descriptive activity names to name the activities in the data set.

- Appropriately labels the data set with descriptive variable names.

- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Contents of this repo

The repo includes the following files:

- 'README.txt'

- 'run_analysis.R': Working code for cleaning and reformatting the original data. Each part of code in properly commented. Merges the test and training sets together, labels the features, cleans the variable names and adds subject IDs and activities to the data frame. Only mean and standart deviations are left in the resukting data frame. Last part of the script creates second tidy data frame with average values. 

- 'Codebook.md': Codebook for the new tidy dataset, descibes .

- 'run.csv': Resulting dasaset for the Assignment.

- 'run_ave.csv': Independent tidy dataset with the average of all the values for eash activity and subject. 


Prerequisites: dplyr and tidyr packages installed. 
