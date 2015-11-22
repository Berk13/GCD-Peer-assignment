run_analysis.R - R script transforming raw data downloaded and unpacked to the working directory.

Script uses libraries data.table for fast data read and merge, dplyr for fast subsetting.

It loads raw feature vector data from training and test set adding columns with
subject and activity information. 

Then the script merges train and test data in one set and filter out all variables but mean and standard
deviation variables with activity and subject ids. It uses data loaded from features.txt file to distinguish 
mean and standart deviation variables by their names.

Script uses data from activity_labels.txt file to change activity ids to descriptive activity names.
Then it uses filtered data loaded from features.txt to label data set with descriptive variable names.

Script melts data table defining activity name and subject id as identificator variables.
Then it uses dcast function to get the table with averages for all measured variables for each subject and
activity.

Then script saves tidy data set as tdata.txt file in the working directory.
