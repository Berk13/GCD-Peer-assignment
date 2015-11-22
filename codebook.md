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

* Subject	Identifier of volunteer. Integer, from 1 to 30.
* Activity	Performed activity. One of six possible character vectors: 
		"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS".

* The following variables are the averages of means and standard deviations of all measurements for defined 
subject and activity. Numeric variables are normalized and bounded within [-1,1].


tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z,
tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y,
tGravityAcc-std()-Z, tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z, tBodyAccJerk-std()-X,
tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z, tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z,
tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z, tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y,
tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z,
tBodyAccMag-mean(), tBodyAccMag-std(), tGravityAccMag-mean(), tGravityAccMag-std(), tBodyAccJerkMag-mean(),
tBodyAccJerkMag-std(), tBodyGyroMag-mean(), tBodyGyroMag-std(), tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std(),
fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z, fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z,
fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z, fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y,
fBodyAccJerk-std()-Z, fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z, fBodyGyro-std()-X,
fBodyGyro-std()-Y, fBodyGyro-std()-Z, fBodyAccMag-mean(), fBodyAccMag-std(), fBodyBodyAccJerkMag-mean(),
fBodyBodyAccJerkMag-std(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(), fBodyBodyGyroJerkMag-mean(),
fBodyBodyGyroJerkMag-std()






