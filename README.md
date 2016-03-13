# Coursera Data Science Project: Getting and cleaning data

The goal of the script "run_analysis.R" is to prepare a tidy data set of data collected from the accelerometers from the Samsung Galaxy S smartphone.

The following steps are taken:
0. Taking into account that the unzipped Samsung data is already in the working directory, the relevant files are read and stored. Test data, training data, the names of the features and the activity names are stored into data frames.
1. The training and the test sets are merged (binding the rows with "rbind") to create only one data set.
2. Only the columns which contain measurements on the mean or the standard deviation are searched for (using the function "grepl") and stored.
3. Descriptive activity names are used to name the activities in the data set. The integer levels are replaced by the activity labels with the function "factor".
4. The data set is appropriately labelled with descriptive variable names, using the function "gsub".
5. A tidy data set with the average of each variable for each activity and each subject is created. With the help of the library "dplyr", the rows are grouped by subject and then by activity and the mean of each group is calculated with "summarize_each"
6. The tidy data set is stored in a txt file
