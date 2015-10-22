library(reshape2)

# Prepare the features data
# Pick up the feaures from file
features <- read.table("ProjectData/features.txt")
# Be sure feature names are character
features[,2] <- as.character(features[,2])
# Select the sequence number of the required features 
featuresRequired <- grep(".*mean.*|.*std.*", features[,2])
# Select the names of the required features
featuresRequired.names <- features[featuresRequired,2]
# Modify the names of the required features
featuresRequired.names = gsub('-mean', 'Mean', featuresRequired.names)
featuresRequired.names = gsub('-std', 'Std', featuresRequired.names)
featuresRequired.names <- gsub('[-()]', '', featuresRequired.names)

# Prepare the activity data
# Pick up the activities from file
activityLabels <- read.table("ProjectData/activity_labels.txt")
# Be sure feature names are character
activityLabels[,2] <- as.character(activityLabels[,2])

# Pick up the data of the test group
# Select only data of the required features
testObs <- read.table("ProjectData/X_test.txt")[featuresRequired]
testActivities <- read.table("ProjectData/y_test.txt")
testSubjects <- read.table("ProjectData/subject_test.txt")
testObs <- cbind(testSubjects, testActivities, testObs)

# Pick up the data of the training group
# Select only data of the required features
trainObs <- read.table("ProjectData/X_train.txt")[featuresRequired]
trainActivities <- read.table("ProjectData/y_train.txt")
trainSubjects <- read.table("ProjectData/subject_train.txt")
trainObs <- cbind(trainSubjects, trainActivities, trainObs)

# Bind all data together
allObs <- rbind(trainObs,testObs)

# Rename columnnames in the dataframe with all the data (change df name)
colnames(allObs) <- c("subject", "activity", featuresRequired.names)

# Create factors from activities and subject
allObs$activity <- factor(allObs$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allObs$subject <- as.factor(allObs$subject)

allObs.melted <- melt(allObs, id = c("subject", "activity"))
allObs.mean <- dcast(allObs.melted, subject + activity ~ variable, mean)

write.table(allObs.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
