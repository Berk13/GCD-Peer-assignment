##Project description
It is peer assigment project in Getting and Cleaning Data course on Coursera.
The purpose of this project is to check one's ability to collect, work with, and clean a data set. The goal 
is to prepare tidy data that can be used for later analysis. 


##Raw data description
Raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
It can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For each record raw data provided across separated files in archive:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


##Guide to create the tidy data file
To create the tidy set of data you should download and unpack raw data file into a working directory.
Then run run_analysis.R script in the same directory to get tidy data in tdata.txt file.


##Cleaning of the data
run_analysis.R script do the following steps to clean data
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates an independent tidy data set with the average of each variable for each activity and each subject.


Description of script could be found in readme.md file.


##Tidy data description
Tidy data file is a plain text table with average measurement for each subject and activity.
File has header row and following variables:

* Subject	Identifier of volunteer. Factor, 30 levels are integers from 1 to 30.
* Activity	Performed activity. Factor, with following 6 levels: 
		"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS".

* The following variables are the averages of means and standard deviations of all measurements for defined 
subject and activity. Numeric variables are normalized and bounded within [-1,1].


Average of tBodyAcc-mean()-X, Average of tBodyAcc-mean()-Y, Average of tBodyAcc-mean()-Z, Average of tBodyAcc-std()-X, 
Average of tBodyAcc-std()-Y, Average of tBodyAcc-std()-Z, Average of tGravityAcc-mean()-X, 
Average of tGravityAcc-mean()-Y, Average of tGravityAcc-mean()-Z, Average of tGravityAcc-std()-X, 
Average of tGravityAcc-std()-Y, Average of tGravityAcc-std()-Z, Average of tBodyAccJerk-mean()-X, 
Average of tBodyAccJerk-mean()-Y, Average of tBodyAccJerk-mean()-Z, Average of tBodyAccJerk-std()-X,
Average of tBodyAccJerk-std()-Y, Average of tBodyAccJerk-std()-Z, Average of tBodyGyro-mean()-X, 
Average of tBodyGyro-mean()-Y, Average of tBodyGyro-mean()-Z, Average of tBodyGyro-std()-X, Average of tBodyGyro-std()-Y, 
Average of tBodyGyro-std()-Z, Average of tBodyGyroJerk-mean()-X, Average of tBodyGyroJerk-mean()-Y,
Average of tBodyGyroJerk-mean()-Z, Average of tBodyGyroJerk-std()-X, Average of tBodyGyroJerk-std()-Y, 
Average of tBodyGyroJerk-std()-Z, Average of tBodyAccMag-mean(), Average of tBodyAccMag-std(), 
Average of tGravityAccMag-mean(), Average of tGravityAccMag-std(), Average of tBodyAccJerkMag-mean(),
Average of tBodyAccJerkMag-std(), Average of tBodyGyroMag-mean(), Average of tBodyGyroMag-std(), 
Average of tBodyGyroJerkMag-mean(), Average of tBodyGyroJerkMag-std(), Average of fBodyAcc-mean()-X, 
Average of fBodyAcc-mean()-Y, Average of fBodyAcc-mean()-Z, Average of fBodyAcc-std()-X, Average of fBodyAcc-std()-Y, 
Average of fBodyAcc-std()-Z, Average of fBodyAccJerk-mean()-X, Average of fBodyAccJerk-mean()-Y, 
Average of fBodyAccJerk-mean()-Z, Average of fBodyAccJerk-std()-X, Average of fBodyAccJerk-std()-Y,
Average of fBodyAccJerk-std()-Z, Average of fBodyGyro-mean()-X, Average of fBodyGyro-mean()-Y, 
Average of fBodyGyro-mean()-Z, Average of fBodyGyro-std()-X, Average of fBodyGyro-std()-Y, Average of fBodyGyro-std()-Z, 
Average of fBodyAccMag-mean(), Average of fBodyAccMag-std(), Average of fBodyBodyAccJerkMag-mean(),
Average of fBodyBodyAccJerkMag-std(), Average of fBodyBodyGyroMag-mean(), Average of fBodyBodyGyroMag-std(), 
Average of fBodyBodyGyroJerkMag-mean(), Average of fBodyBodyGyroJerkMag-std()






