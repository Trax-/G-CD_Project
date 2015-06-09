# G-CD_Project
Getting and Cleaning Data Course project

How to use this script:

This script is capable of downloading the UCI HAR Dataset from the url source provided for the project.
If the zipped dataset is found in the working directory (UCI HAR Dataset.zip) it will extract the necessary information from within the zip file itself.  The only thing needed is a working directory, or a working directory with the original zipped dataset file.


What this script does:

After locating the zipped dataset archive the following datasets are created 
activity: contains the list of activity labels from the activity_labels.txt
variables: contains the variable names from the features.txt file
xtrain: contains the actual data values from the X_train.txt file
ytrain: contains the activity id's from y_train.txt
subject: contains the subject identifier from the subject_train.txt

Processing begins by looping thru the ytrain dataframe activity id's and replacing them with activity labels.
Next we replace the default column names, subjectid for the subject dataframe, variable names from the variables
dataframe for the xtrain dataframe and finally activity for the ytrain dataframe.  

At this point we combine the 3 dataframes subject, ytrain, and xtrain by column to create a temporary dataframe
train, this dataframe is the full data for the training data, we remove the row, subject, xtrain, ytrain,
dataframes / variables as they are no longer needed.

The above process is repeated to create a test dataframe with the testing portion of the data, and again we remove
the dataframes and variables that are no longer needed.

Finally the train and test dataframes are combined to create a combined dataframe with both the test and training 
data, we remove the test and train dataframes and write the fulldata frame to a file "data.txt" the idea behind
this is so that should we need to re-run the script for some reason it won't be necessary to do all the work to
recombine the data, should the user find it necessary to re-combine the data just remove the data.txt file 
found in the working directory.

From the fulldata we extract just the columns for the mean and standard deviation values storing that into a
datatable, at this point we clean up the column/variable names as part of the tidying the data process, calculate 
the requested averages and save that off to a text data file called tidydataset.txt using write.table.

To read the tidydataset.txt into R and view it, the following commands may be used:

tidydata <- read.table("tidydataset.txt", header = T)
View(tidydata)


