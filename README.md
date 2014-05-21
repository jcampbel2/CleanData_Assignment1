## Getting and Cleaning Data - Course Project

This repo includes this readme file and the R source file "run_analysis.R".

The source file has one function within it also called run_analysis.  This function is used to read data 
as described in 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

To install please run 

* source("run_analysis.R")

from R command prompt.  This will install the relevant function. It is also neccesary to have 
the library "stats" and any dependencies installed in your R session

The function run_analysis accepts 3 (optional) parameters.  These are

* wd -> directory that input data is held in.  Defaults to current working directory
* od -> directory that output data is written to.   Defaults to current working directory
* of -> output file name.  Defaults to SummaryData.txt

Then ensure you have the following raw data files in directory "wd".

* activity_labels.txt
* features.txt
* subject_test.txt
* x_test.txt
* y_test.txt
* subject_train.txt
* x_train.txt
* y_train.txt

These files specifications are given in the raw data set link above.

the function will then generate an output file in with name and directory as per parameters above.

This files structure is comma delimited with text qualifiers of ".  Columns are;

  * rowID -> Row identifier
 * SubjectID -> Subject unique ID
 * ActivityLabel -> Activity Description
 * tBodyAcc_mean_X -> mean of all measures of tBodyAcc_mean_X for Subject and Activity
 * tBodyAcc_mean_Y -> mean of all measures of tBodyAcc_mean_Y for Subject and Activity
 * tBodyAcc_mean_Z -> mean of all measures of tBodyAcc_mean_Z for Subject and Activity
 * tBodyAcc_std_X -> mean of all measures of tBodyAcc_std_X for Subject and Activity
 * tBodyAcc_std_Y -> mean of all measures of tBodyAcc_std_Y for Subject and Activity
 * tBodyAcc_std_Z -> mean of all measures of tBodyAcc_std_Z for Subject and Activity
 * tGravityAcc_mean_X -> mean of all measures of tGravityAcc_mean_X for Subject and Activity
 * tGravityAcc_mean_Y -> mean of all measures of tGravityAcc_mean_Y for Subject and Activity
 * tGravityAcc_mean_Z -> mean of all measures of tGravityAcc_mean_Z for Subject and Activity
 * tGravityAcc_std_X -> mean of all measures of tGravityAcc_std_X for Subject and Activity
 * tGravityAcc_std_Y -> mean of all measures of tGravityAcc_std_Y for Subject and Activity
 * tGravityAcc_std_Z -> mean of all measures of tGravityAcc_std_Z for Subject and Activity
 * tBodyAccJerk_mean_X -> mean of all measures of tBodyAccJerk_mean_X for Subject and Activity
 * tBodyAccJerk_mean_Y -> mean of all measures of tBodyAccJerk_mean_Y for Subject and Activity
 * tBodyAccJerk_mean_Z -> mean of all measures of tBodyAccJerk_mean_Z for Subject and Activity
 * tBodyAccJerk_std_X -> mean of all measures of tBodyAccJerk_std_X for Subject and Activity
 * tBodyAccJerk_std_Y -> mean of all measures of tBodyAccJerk_std_Y for Subject and Activity
 * tBodyAccJerk_std_Z -> mean of all measures of tBodyAccJerk_std_Z for Subject and Activity
 * tBodyGyro_mean_X -> mean of all measures of tBodyGyro_mean_X for Subject and Activity
 * tBodyGyro_mean_Y -> mean of all measures of tBodyGyro_mean_Y for Subject and Activity
 * tBodyGyro_mean_Z -> mean of all measures of tBodyGyro_mean_Z for Subject and Activity
 * tBodyGyro_std_X -> mean of all measures of tBodyGyro_std_X for Subject and Activity
 * tBodyGyro_std_Y -> mean of all measures of tBodyGyro_std_Y for Subject and Activity
 * tBodyGyro_std_Z -> mean of all measures of tBodyGyro_std_Z for Subject and Activity
 * tBodyGyroJerk_mean_X -> mean of all measures of tBodyGyroJerk_mean_X for Subject and Activity
 * tBodyGyroJerk_mean_Y -> mean of all measures of tBodyGyroJerk_mean_Y for Subject and Activity
 * tBodyGyroJerk_mean_Z -> mean of all measures of tBodyGyroJerk_mean_Z for Subject and Activity
 * tBodyGyroJerk_std_X -> mean of all measures of tBodyGyroJerk_std_X for Subject and Activity
 * tBodyGyroJerk_std_Y -> mean of all measures of tBodyGyroJerk_std_Y for Subject and Activity
 * tBodyGyroJerk_std_Z -> mean of all measures of tBodyGyroJerk_std_Z for Subject and Activity
 * tBodyAccMag_mean -> mean of all measures of tBodyAccMag_mean for Subject and Activity
 * tBodyAccMag_std -> mean of all measures of tBodyAccMag_std for Subject and Activity
 * tGravityAccMag_mean -> mean of all measures of tGravityAccMag_mean for Subject and Activity
 * tGravityAccMag_std -> mean of all measures of tGravityAccMag_std for Subject and Activity
 * tBodyAccJerkMag_mean -> mean of all measures of tBodyAccJerkMag_mean for Subject and Activity
 * tBodyAccJerkMag_std -> mean of all measures of tBodyAccJerkMag_std for Subject and Activity
 * tBodyGyroMag_mean -> mean of all measures of tBodyGyroMag_mean for Subject and Activity
 * tBodyGyroMag_std -> mean of all measures of tBodyGyroMag_std for Subject and Activity
 * tBodyGyroJerkMag_mean -> mean of all measures of tBodyGyroJerkMag_mean for Subject and Activity
 * tBodyGyroJerkMag_std -> mean of all measures of tBodyGyroJerkMag_std for Subject and Activity
 * fBodyAcc_mean_X -> mean of all measures of fBodyAcc_mean_X for Subject and Activity
 * fBodyAcc_mean_Y -> mean of all measures of fBodyAcc_mean_Y for Subject and Activity
 * fBodyAcc_mean_Z -> mean of all measures of fBodyAcc_mean_Z for Subject and Activity
 * fBodyAcc_std_X -> mean of all measures of fBodyAcc_std_X for Subject and Activity
 * fBodyAcc_std_Y -> mean of all measures of fBodyAcc_std_Y for Subject and Activity
 * fBodyAcc_std_Z -> mean of all measures of fBodyAcc_std_Z for Subject and Activity
 * fBodyAcc_meanFreq_X -> mean of all measures of fBodyAcc_meanFreq_X for Subject and Activity
 * fBodyAcc_meanFreq_Y -> mean of all measures of fBodyAcc_meanFreq_Y for Subject and Activity
 * fBodyAcc_meanFreq_Z -> mean of all measures of fBodyAcc_meanFreq_Z for Subject and Activity
 * fBodyAccJerk_mean_X -> mean of all measures of fBodyAccJerk_mean_X for Subject and Activity
 * fBodyAccJerk_mean_Y -> mean of all measures of fBodyAccJerk_mean_Y for Subject and Activity
 * fBodyAccJerk_mean_Z -> mean of all measures of fBodyAccJerk_mean_Z for Subject and Activity
 * fBodyAccJerk_std_X -> mean of all measures of fBodyAccJerk_std_X for Subject and Activity
 * fBodyAccJerk_std_Y -> mean of all measures of fBodyAccJerk_std_Y for Subject and Activity
 * fBodyAccJerk_std_Z -> mean of all measures of fBodyAccJerk_std_Z for Subject and Activity
 * fBodyAccJerk_meanFreq_X -> mean of all measures of fBodyAccJerk_meanFreq_X for Subject and Activity
 * fBodyAccJerk_meanFreq_Y -> mean of all measures of fBodyAccJerk_meanFreq_Y for Subject and Activity
 * fBodyAccJerk_meanFreq_Z -> mean of all measures of fBodyAccJerk_meanFreq_Z for Subject and Activity
 * fBodyGyro_mean_X -> mean of all measures of fBodyGyro_mean_X for Subject and Activity
 * fBodyGyro_mean_Y -> mean of all measures of fBodyGyro_mean_Y for Subject and Activity
 * fBodyGyro_mean_Z -> mean of all measures of fBodyGyro_mean_Z for Subject and Activity
 * fBodyGyro_std_X -> mean of all measures of fBodyGyro_std_X for Subject and Activity
 * fBodyGyro_std_Y -> mean of all measures of fBodyGyro_std_Y for Subject and Activity
 * fBodyGyro_std_Z -> mean of all measures of fBodyGyro_std_Z for Subject and Activity
 * fBodyGyro_meanFreq_X -> mean of all measures of fBodyGyro_meanFreq_X for Subject and Activity
 * fBodyGyro_meanFreq_Y -> mean of all measures of fBodyGyro_meanFreq_Y for Subject and Activity
 * fBodyGyro_meanFreq_Z -> mean of all measures of fBodyGyro_meanFreq_Z for Subject and Activity
 * fBodyAccMag_mean -> mean of all measures of fBodyAccMag_mean for Subject and Activity
 * fBodyAccMag_std -> mean of all measures of fBodyAccMag_std for Subject and Activity
 * fBodyAccMag_meanFreq -> mean of all measures of fBodyAccMag_meanFreq for Subject and Activity
 * fBodyBodyAccJerkMag_mean -> mean of all measures of fBodyBodyAccJerkMag_mean for Subject and Activity
 * fBodyBodyAccJerkMag_std -> mean of all measures of fBodyBodyAccJerkMag_std for Subject and Activity
 * fBodyBodyAccJerkMag_meanFreq -> mean of all measures of fBodyBodyAccJerkMag_meanFreq for Subject and Activity
 * fBodyBodyGyroMag_mean -> mean of all measures of fBodyBodyGyroMag_mean for Subject and Activity
 * fBodyBodyGyroMag_std -> mean of all measures of fBodyBodyGyroMag_std for Subject and Activity
 * fBodyBodyGyroMag_meanFreq -> mean of all measures of fBodyBodyGyroMag_meanFreq for Subject and Activity
 * fBodyBodyGyroJerkMag_mean -> mean of all measures of fBodyBodyGyroJerkMag_mean for Subject and Activity
 * fBodyBodyGyroJerkMag_std -> mean of all measures of fBodyBodyGyroJerkMag_std for Subject and Activity
 * fBodyBodyGyroJerkMag_meanFreq -> mean of all measures of fBodyBodyGyroJerkMag_meanFreq for Subject and Activity


*** END OF FILE ****