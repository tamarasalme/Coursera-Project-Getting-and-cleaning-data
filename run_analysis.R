
##########################################################################################################

## Getting and cleaning data: Course Project
## Tamara Salmeron Ruiz

## Script to collect and clean the data set collected from the accelerometers from the Samsung Galaxy S
#The Samsung data must be in the working directory

##########################################################################################################

# 0. Read the data

#Read the names of the features
features <- read.table("./features.txt")

#Read the file that links the class labels with their activity name
activity_name <- read.table("./activity_labels.txt")

#Read the test data
labels_test <- read.table("./test/y_test.txt") #Test labels
data_test <- read.table("./test/X_test.txt") #Test data set
subject_test <- read.table("./test/subject_test.txt") #Subject who performed the test activity

#Read the training data
labels_train <- read.table("./train/y_train.txt") #Test labels
data_train <- read.table("./train/X_train.txt") #Test data set
subject_train <- read.table("./train/subject_train.txt") #Subject who performed the test activity


# 1. Merge the training and the test sets to create only one data set
test <- cbind(subject_test, labels_test, data_test) #Test data
train <- cbind(subject_train, labels_train, data_train) #Training data
merged <- rbind(test, train) #Merge test und training data
colnames(merged) <- c("subjectid", "activityid", as.character(features[,2])) #Name the columns of the merged data


# 2. Extract only the measurements on the mean and standard deviation for each measurement
wanted_feat <- grepl("subjectid|activityid|((mean|std)\\(\\))", colnames(merged)) #Logical vector: TRUE for the columns of the merged data set that contain a mean or a standard deviation
filtered <- merged[,wanted_feat] #"filtered" contains only the subject ID, activity ID, mean and standard deviation for each measurement


# 3. Use descriptive activity names to name the activities in the data set
filtered$activityid <- factor(filtered$activityid, levels = activity_name[,1], labels = activity_name[,2])


# 4. Appropriately labels the data set with descriptive variable names.
names(filtered) <- gsub("^t", "time", names(filtered)) #Replace "t" by "time"
names(filtered) <- gsub("^f", "frequency", names(filtered)) #Replace "f" by "frequency"
names(filtered) <- gsub("std", "standarddeviation", names(filtered)) #Replace "std" by "standarddeviation"
names(filtered) <- gsub("Acc", "Acceleration", names(filtered)) #Replace "Acc" by "Acceleration"
names(filtered) <- gsub("Gyro", "Gyroscope", names(filtered)) #Replace "Gyro" by "Gyroscope"
names(filtered) <- gsub("Mag", "Magnitude", names(filtered)) #Replace "Mag" by "Magnitude"


# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
library(dplyr)
tidy <- filtered %>% group_by(subjectid, activityid) %>% summarize_each(funs(mean)) #Averages are calculated 
write.table(tidy, file = "tidydata.txt",row.names=FALSE, sep='\t')