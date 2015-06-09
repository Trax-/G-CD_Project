Data Set information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The experiments have been video-recorded to label the data manually.  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

Data Set Description
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.  The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.  From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

Abbreviations and units of measurement
1. Leading "t" or "f" denotes a time or frequency domain measurement.
2. Body = Movement of the body.
3. Gravity = acceleration of gravity 
4. Acc = accelerometer measurement in g's
5. Gyro = gryroscope measurement in g/sec
6. Jerk = sudden movement in rad/sec/sec
7. Mag = magnitude of movement
8. mean and std = mean and standard deviation calculated

The following signals were used to estimate the variables. The X, Y, and Z axes denoted by -XYZ
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

further from these estimates were calculated
mean()
std()

Original Name	            Replacement Name
subjectid                  	subjectid                                  
activity                   	activity                                   
tBodyAcc-mean()-X          	timebodyaccelerometerMEANx                 
tBodyAcc-mean()-Y          	timebodyaccelerometerMEANy                 
tBodyAcc-mean()-Z          	timebodyaccelerometerMEANz                 
tBodyAcc-std()-X           	timebodyaccelerometerSDx                  
tBodyAcc-std()-Y           	timebodyaccelerometerSDy                  
tBodyAcc-std()-Z           	timebodyaccelerometerSDz                  
tGravityAcc-mean()-X       	timegravityaccelerometerMEANx              
tGravityAcc-mean()-Y       	timegravityaccelerometerMEANy              
tGravityAcc-mean()-Z       	timegravityaccelerometerMEANz              
tGravityAcc-std()-X        	timegravityaccelerometerSDx               
tGravityAcc-std()-Y        	timegravityaccelerometerSDy               
tGravityAcc-std()-Z        	timegravityaccelerometerSDz               
tBodyAccJerk-mean()-X      	timebodyaccelerometerjerkMEANx             
tBodyAccJerk-mean()-Y      	timebodyaccelerometerjerkMEANy             
tBodyAccJerk-mean()-Z      	timebodyaccelerometerjerkMEANz             
tBodyAccJerk-std()-X       	timebodyaccelerometerjerkSDx              
tBodyAccJerk-std()-Y       	timebodyaccelerometerjerkSDy              
tBodyAccJerk-std()-Z       	timebodyaccelerometerjerkSDz              
tBodyGyro-mean()-X         	timebodygyroscopeMEANx                     
tBodyGyro-mean()-Y         	timebodygyroscopeMEANy                     
tBodyGyro-mean()-Z         	timebodygyroscopeMEANz                     
tBodyGyro-std()-X          	timebodygyroscopeSDx                      
tBodyGyro-std()-Y          	timebodygyroscopeSDy                      
tBodyGyro-std()-Z          	timebodygyroscopeSDz                      
tBodyGyroJerk-mean()-X     	timebodygyroscopejerkMEANx                 
tBodyGyroJerk-mean()-Y     	timebodygyroscopejerkMEANy                 
tBodyGyroJerk-mean()-Z     	timebodygyroscopejerkMEANz                 
tBodyGyroJerk-std()-X      	timebodygyroscopejerkSDx                  
tBodyGyroJerk-std()-Y      	timebodygyroscopejerkSDy                  
tBodyGyroJerk-std()-Z      	timebodygyroscopejerkSDz                  
tBodyAccMag-mean()         	timebodyaccelerometermagnitudeMEAN
tBodyAccMag-std()          	timebodyaccelerometermagnitudeSD
tGravityAccMag-mean()      	timegravityaccelerometermagnitudeMEAN
tGravityAccMag-std()       	timegravityaccelerometermagnitudeSD
tBodyAccJerkMag-mean()     	timebodyaccelerometerjerkmagnitudeMEAN
tBodyAccJerkMag-std()      	timebodyaccelerometerjerkmagnitudeSD
tBodyGyroMag-mean()        	timebodygyroscopemagnitudeMEAN
tBodyGyroMag-std()         	timebodygyroscopemagnitudeSD
tBodyGyroJerkMag-mean()    	timebodygyroscopejerkmagnitudeMEAN
tBodyGyroJerkMag-std()     	timebodygyroscopejerkmagnitudeSD
fBodyAcc-mean()-X          	frequencybodyaccelerometerMEANx            
fBodyAcc-mean()-Y          	frequencybodyaccelerometerMEANy            
fBodyAcc-mean()-Z          	frequencybodyaccelerometerMEANz            
fBodyAcc-std()-X           	frequencybodyaccelerometerSDx             
fBodyAcc-std()-Y           	frequencybodyaccelerometerSDy             
fBodyAcc-std()-Z           	frequencybodyaccelerometerSDz             
fBodyAccJerk-mean()-X      	frequencybodyaccelerometerjerkMEANx        
fBodyAccJerk-mean()-Y      	frequencybodyaccelerometerjerkMEANy        
fBodyAccJerk-mean()-Z      	frequencybodyaccelerometerjerkMEANz        
fBodyAccJerk-std()-X       	frequencybodyaccelerometerjerkSDx         
fBodyAccJerk-std()-Y       	frequencybodyaccelerometerjerkSDy         
fBodyAccJerk-std()-Z       	frequencybodyaccelerometerjerkSDz         
fBodyGyro-mean()-X         	frequencybodygyroscopeMEANx                
fBodyGyro-mean()-Y         	frequencybodygyroscopeMEANy                
fBodyGyro-mean()-Z         	frequencybodygyroscopeMEANz                
fBodyGyro-std()-X          	frequencybodygyroscopeSDx                 
fBodyGyro-std()-Y          	frequencybodygyroscopeSDy                 
fBodyGyro-std()-Z          	frequencybodygyroscopeSDz                 
fBodyAccMag-mean()         	frequencybodyaccelerometermagnitudeMEAN
fBodyAccMag-std()          	frequencybodyaccelerometermagnitudeSD
fBodyBodyAccJerkMag-mean() 	frequencybodyaccelerometerjerkmagnitudeMEAN
fBodyBodyAccJerkMag-std()  	frequencybodyaccelerometerjerkmagnitudeSD
fBodyBodyGyroMag-mean()    	frequencybodygyroscopemagnitudeMEAN
fBodyBodyGyroMag-std()     	frequencybodygyroscopemagnitudeSD
fBodyBodyGyroJerkMag-mean()	frequencybodygyroscopejerkmagnitudeMEAN
fBodyBodyGyroJerkMag-std() 	frequencybodygyroscopejerkmagnitudeSD