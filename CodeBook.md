#CodeBook for "TidyDataSet.txt"

This is the codebook for TidyDataSet.txt. This contains detail of the transformations performed to clean Samsung Galaxy S smartphone data (source : "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )". TidyDataSet.txt is the resulting output, and this codebook also provides descriptions of the variables and measures within this data set.

#Transformations

1. Set all feature names within the "features.txt" data file to lower case.
2. Subset the test and train data sets to only include features containing the        characters "mean()" or "std()". This only keeps measures of mean or standard       deviation.
3. Remove "_" and "()" characters from all feature names.
4. Setting and tidying of Train, Test and Activity label column names.
5. Merge Train and Test labels data set with Activity names data. 
6. Add the "activityname" column to the Train and Test Data.
7. Add the "subject" column to the Train and Test Data.
8. Merge the Train and Test data sets into one "Master" data set.
9. Use dplyr package to average the std/mean measures subsetted at 2. by            "activityname" and "subject". This produces "TidyDataSet".
10. Output "TidyDataSet" to a txt file in working directory.

#Variables

subject            :        Integer vector between 1 and 30.
                            Unique identifier per each subject.
          
activityname       :        Character vector with 6 levels.
                            Describes the observed activity for the subject.
                            

#MeasureSelection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
Me
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag0.2
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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


#Measures

                            
tbodyaccmeanx,y,z     :     Numeric vectors between -1 and 1.
                            Mean of 3-axial signals in the X, Y and Z                                       directions.
                            
                            
tgravityaccmeanx,y,z  :     Numeric vectors between -1 and 1.
                            Mean of 3-axial signals in the X, Y and Z                                       directions.


tbodyaccjerkmeanx,y,z :     Numeric vectors between -1 and 1.
                            Mean of 3-axial signals in the X, Y and Z                                       directions.

tbodygyromeanx,y,z    :     Numeric vectors between -1 and 1.
                            Mean of 3-axial signals in the X, Y and Z                                       directions.

tbodygyrojerkmeanx,y,z:     Numeric vectors between -1 and 1.
                            Mean of 3-axial signals in the X, Y and Z                                       directions.
                            
tbodyaccmagmean       :     Numeric vector between -1 and 1.
                            Mean magnitude of 3-axial signals in the X, Y and Z                              directions. 

tgravityaccmagmean    :     Numeric vector between -1 and 1.
                            Mean magnitude of 3-axial signals in the X, Y and Z                              directions.  
                            
tbodyaccjerkmagmean   :     Numeric vector between -1 and 1.
                            Mean magnitude of 3-axial signals in the X, Y and Z                              directions.
                            
tbodygyromagmean      :     Numeric vector between -1 and 1.
                            Mean magnitude of 3-axial signals in the X, Y and Z                              directions.
                            
tbodygyrojerkmagmean  :     Numeric vector between -1 and 1.
                            Mean magnitude of 3-axial signals in the X, Y and Z                              directions.
                            
fbodyaccmeanx,y,z     :     Numeric vectors between -1 and 1.
                            Mean FFT of 3-axial signals in the X, Y and Z                                   directions.
                            
fbodyaccjerkmeanx,y,z :     Numeric vectors between -1 and 1.
                            Mean FFT of 3-axial signals in the X, Y and Z                                   directions.
                            
fbodygyromeanx,y,z    :     Numeric vectors between -1 and 1.
                            Mean FFT of 3-axial signals in the X, Y and Z                                   directions.
                            
fbodyaccmagmean       :     Numeric vector between -1 and 1.
                            Mean FFT magnitude of 3-axial signals in the X, Y                               and Z directions.
                            
fbodybodyaccjerkmagmean:    Numeric vector between -1 and 1.
                            Mean FFT magnitude of 3-axial signals in the X, Y                               and Z directions.
                            
fbodybodygyromagmean  :     Numeric vector between -1 and 1.
                            Mean FFT magnitude of 3-axial signals in the X, Y                               and Z directions.
                            
fbodybodygyrojerkmagmean:   Numeric vector between -1 and 1.
                            Mean FFT magnitude of 3-axial signals in the X, Y                               and Z directions.
                            
tbodyaccstdx,y,z      :     Numeric vectors between -1 and 1.
                            Standard deviation of 3-axial signals in the X, Y                               and Z directions.
                            
                            
tgravityaccstdx,y,z   :     Numeric vectors between -1 and 1.
                            Standard deviation of 3-axial signals in the X, Y                               and Z directions.


tbodyaccjerkstdx,y,z  :     Numeric vectors between -1 and 1.
                            Standard deviation of 3-axial signals in the X, Y                               and Z directions.

tbodygyrostdx,y,z     :     Numeric vectors between -1 and 1.
                            Standard deviation of 3-axial signals in the X, Y                               and Z directions.

tbodygyrojerkstdx,y,z:      Numeric vectors between -1 and 1.
                            Standard deviation of 3-axial signals in the X, Y                               and Z directions.
                            
tbodyaccmagstd        :     Numeric vector between -1 and 1.
                            Standard deviation magnitude of 3-axial signals in the X, Y and Z                              directions. 

tgravityaccmagstd     :     Numeric vector between -1 and 1.
                            Standard deviation magnitude of 3-axial signals in                              the X, Y and Z directions.  
                            
tbodyaccjerkmagstd    :     Numeric vector between -1 and 1.
                            Standard deviation magnitude of 3-axial signals in                              the X, Y and Z directions.
                            
tbodygyromagstd       :     Numeric vector between -1 and 1.
                            Standard deviation magnitude of 3-axial signals in                              the X, Y and Z directions.
                            
tbodygyrojerkmagstd   :     Numeric vector between -1 and 1.
                            Standard deviation magnitude of 3-axial signals in                              the X, Y and Z directions.
                            
fbodyaccstdx,y,z      :     Numeric vectors between -1 and 1.
                            Standard deviation FFT of 3-axial signals in the X,                             Y and Z directions.
                            
fbodyaccjerkstdx,y,z  :     Numeric vectors between -1 and 1.
                            Standard deviation FFT of 3-axial signals in the X,                             Y and Z directions.
                            
fbodygyrostdx,y,z     :     Numeric vectors between -1 and 1.
                            Standard deviation FFT of 3-axial signals in the X,                             Y and Z directions.
                            
fbodyaccmagstd        :     Numeric vector between -1 and 1.
                            Standard deviation FFT magnitude of 3-axial signals                             in the X, Y and Z directions.
                            
fbodybodyaccjerkmagstd:     Numeric vector between -1 and 1.
                            Standard deviation FFT magnitude of 3-axial signals                             in the X, Y and Z directions.
                            
fbodybodygyromagstd   :     Numeric vector between -1 and 1.
                            Standard deviation FFT magnitude of 3-axial signals                             in the X, Y and Z directions.
                            
fbodybodygyrojerkmagstd:    Numeric vector between -1 and 1.
                            Standard deviation FFT magnitude of 3-axial signals                             in the X, Y and Z directions.
