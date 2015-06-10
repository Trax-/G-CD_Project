Getting and Cleaning Data Course project
----------------------------------------

### How to use the `run_analysis.R` script:

This script is capable of downloading the UCI HAR Dataset from the url source provided for the project. If the zipped dataset is found in the working directory (UCI HAR Dataset.zip) it will extract the necessary information from within the zip file itself. The only thing needed is a working directory, or a working directory with the original zipped dataset file.

### What this script does:

After locating the zipped dataset archive the following datasets are created

    |Dataset Name |                         Description                                     |  
    |:------------|:-----------------------------------------------------------------------:|  
    |activity     | contains the list of activity labels from the activity_labels.txt file  |    
    |variables    | contains the variable names from the features.txt file                  |  
    |xtrain       | contains the actual data values from the X_train.txt file               |  
    |ytrain       | contains the activity id's from y_train.txt file                        |
    |subject      | contains the subject identifier from the subject_train.txt file         |  

Processing begins by looping thru the ytrain dataframe activity id's and replacing them with activity labels. Next we replace the default column names, subjectid for the subject dataframe, variable names from the variables dataframe, for the xtrain dataframe and finally activity for the ytrain dataframe.

At this point we bind the 3 dataframes subject, ytrain, and xtrain by column to create a temporary dataframe train, the train dataframe is the full data for all the subjects in the training subject group. We remove the row, subject, xtrain, ytrain, dataframes/variables as they are no longer needed.

The above process is then repeated to create a test dataframe with all the subjects in the testing group. Again we remove the dataframes/variables that are no longer needed.

Finally the train and test dataframes are bound by row to create a combined dataframe fulldata, of the testing and training groups. As the test and train dataframes are no longer needed they are removed. As a convenience and to alleviate re-processing, the fulldata frame is at this point written out to a file "data.txt" in the working directory. Should it be desired or necessary to re-run this script the data.txt file will read in hopefully saving some extra processing.

From the fulldata we extract 66 columns for the mean and standard deviation values, storing them into a datatable. Column/variable names are converted to a more tidy format, ordered, averages calculated, and written out to a text data file called tidydataset.txt in the working directory using write.table.

To read the tidydataset.txt into R and view it, the following commands may be used:

`tidydata <- read.table("tidydataset.txt", header = T)`

`View(tidydata)`
