# This script will download the UCI HAR Dataset.zip file
# if it is not found in the current working directory.
# 
# After retrieving or upon finding an existing file
# it will extract only the data from the files,
# combine the data into one large set, from that extract
# only the relevant data and then perform the calculations
# to create the final output dataset.

library(data.table)

zipfile = "UCI HAR Dataset.zip"

# check if the Dataset zipfile exists
# if not download it

if (!file.exists(zipfile)) {
    url <-
        "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    download.file(url, method = "curl", zipfile, mode = "wb")
    
    rm(url)
}

# This block will read the text files and create one
# large dataset which will be saved as data.txt in the
# current working directory this is done in case the user wishes
# to verify the combined dataset prior to final output.
#  HOWEVER please note if data.txt exists this whole section
#  Will be SKIPPED

if (!file.exists("./data.txt")) {
    
    activity <-
        read.table(unz(zipfile, "UCI HAR Dataset/activity_labels.txt"))
    
    variables <-
        read.table(unz(zipfile, "UCI HAR Dataset/features.txt"))
    
    xtrain <-
        read.table(unz(zipfile, "UCI HAR Dataset/train/X_train.txt"))
    
    ytrain <-
        read.table(unz(zipfile, "UCI HAR Dataset/train/y_train.txt"))
    
    subject <-
        read.table(unz(zipfile, "UCI HAR Dataset/train/subject_train.txt"))
    
    # Substitute Activity names for the activity number
    for (row in ytrain)
        ytrain$V1 = activity[row,2]
    
    # Give all the columns names
    colnames(subject) <- "subjectid"
    colnames(xtrain) <- variables$V2
    colnames(ytrain) <- "activity"
    
    # combine the training columns
    train <- cbind(subject, ytrain, xtrain)
    
    # Clean up all the objects we don't need anymore
    rm(row, subject, xtrain, ytrain)
    
    subject <-
        read.table(unz(zipfile, "UCI HAR Dataset/test/subject_test.txt"))
    
    xtest <-
        read.table(unz(zipfile, "UCI HAR Dataset/test/X_test.txt"))
    
    ytest <-
        read.table(unz(zipfile, "UCI HAR Dataset/test/y_test.txt"))
    
    for (row in ytest)
        ytest$V1 = activity[row,2]
    
    colnames(subject) <- "subjectid"
    colnames(xtest) <- variables$V2
    colnames(ytest) <- "activity"
    
    test <- cbind(subject, ytest, xtest)
    
    rm(activity, row, subject, variables, xtest, ytest, zipfile)
    
    # combine all the rows from both train and test data
    fullData <- rbind(train, test)
    
    # remove un-needed temporary tables
    rm(test, train)
    
    # finally write out the full formed data set
    # if this scipt is re-run it will use this data file unless
    # data.txt is removed
    write.table(fullData, "./data.txt", row.names = F, col.names = T)
    
} else
    fullData <- read.table("./data.txt", header = T)

# extract only the columns we need for our particular problem
extractedData <-
    data.table(fullData[, c(
        1:8, 43:48, 83:88, 123:128, 163:168,
        203:204, 216:217, 229:230, 242:243,
        255:256, 268:273, 347:352, 426:431,
        505:506, 518:519, 531:532, 544:545
    )])

# clean up the names
# i.e.(tBodyAcc-mean()-X becomes timebodyaccelerometermeanX)
setnames(extractedData, gsub("^t", "time", tolower(names(extractedData))))
setnames(extractedData, gsub("^f", "frequency", names(extractedData)))
setnames(extractedData, gsub("acc", "accelerometer", names(extractedData)))
setnames(extractedData, gsub("-([a-z]*)\\(\\)-*", "\\1", names(extractedData)))
setnames(extractedData, gsub("mag", "magnitude", names(extractedData)))
setnames(extractedData, gsub("gyro", "gyroscope", names(extractedData)))
setnames(extractedData, gsub("bodybody", "body", names(extractedData)))
setnames(extractedData, gsub("std", "SD", names(extractedData)))
setnames(extractedData, gsub("mean", "MEAN", names(extractedData)))

# remove the large data set, we have the data we wanted
rm(fullData)

# Sort the data table by subjectid then by the activity
setkey(extractedData, subjectid, activity)

# calculate the mean of each variable grouping them by 
# subjectid then by activity
tidyDataSet <-
    extractedData[, lapply(.SD, mean), by = .(subjectid, activity)]

# save the calculated data set 
write.table(tidyDataSet, "tidydataset.txt", row.names = F, col.names = T)

# remove the last remaining extraneous file
rm(extractedData)