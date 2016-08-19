# 1. THE DATA

The data is about *Human Activity Recognition Using Smartphones Dataset*

The data was provided courtesy of:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

From the data received, *two* data sets were created:

The first dataset *tidy_data.txt* has *10299* observations and *81* variables while the second data set *tidy_with_avg.txt* has *10299* observations and *239* variables.

# 2. THE VARIABLES

*tidy_data.txt* isolates only the variables from the initial dataset that contain *mean* or *standard deviation* for the measurements that were taken  during the experiment.

"tidy_with_avg.txt" contains all the variables in "tidy_data.txt" including the "averages for each variable by activity and subject."

These are the feature variables in the dataset.
XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

variable names in mixed upper and lower case e.g "tBodyAcc-mean()-X" denote variables originally recorded and presented in the initial dataset

variable names in lower case denote the mean of their corresponding initial variable by "activity" e.g "tbodyacc-mean()-x" for "tBodyAcc-mean()-X"

variable names in uppercase denote the mean of of their corresponding initial  variable by "subject" e.g e.g "TBODYACC-MEAN()-X" for "tBodyAcc-mean()-X" 

                        subject
                       activity
               tBodyAcc-mean()-X
               tBodyAcc-mean()-Y
               tBodyAcc-mean()-Z
                tBodyAcc-std()-X
                tBodyAcc-std()-Y
                tBodyAcc-std()-Z
            tGravityAcc-mean()-X
           tGravityAcc-mean()-Y
           tGravityAcc-mean()-Z
            tGravityAcc-std()-X
            tGravityAcc-std()-Y
            tGravityAcc-std()-Z
          tBodyAccJerk-mean()-X
          tBodyAccJerk-mean()-Y
          tBodyAccJerk-mean()-Z
           tBodyAccJerk-std()-X
           tBodyAccJerk-std()-Y
           tBodyAccJerk-std()-Z
             tBodyGyro-mean()-X
             tBodyGyro-mean()-Y
             tBodyGyro-mean()-Z
              tBodyGyro-std()-X
              tBodyGyro-std()-Y
              tBodyGyro-std()-Z
         tBodyGyroJerk-mean()-X
         tBodyGyroJerk-mean()-Y
         tBodyGyroJerk-mean()-Z
          tBodyGyroJerk-std()-X
          tBodyGyroJerk-std()-Y
          tBodyGyroJerk-std()-Z
             tBodyAccMag-mean()
              tBodyAccMag-std()
          tGravityAccMag-mean()
           tGravityAccMag-std()
         tBodyAccJerkMag-mean()
          tBodyAccJerkMag-std()
            tBodyGyroMag-mean()
             tBodyGyroMag-std()
        tBodyGyroJerkMag-mean()
         tBodyGyroJerkMag-std()
              fBodyAcc-mean()-X
              fBodyAcc-mean()-Y
              fBodyAcc-mean()-Z
               fBodyAcc-std()-X
               fBodyAcc-std()-Y
               fBodyAcc-std()-Z
          fBodyAcc-meanFreq()-X
          fBodyAcc-meanFreq()-Y
          fBodyAcc-meanFreq()-Z
          fBodyAccJerk-mean()-X
          fBodyAccJerk-mean()-Y
          fBodyAccJerk-mean()-Z
         fBodyAccJerk-std()-X
             fBodyAccJerk-std()-Y
             fBodyAccJerk-std()-Z
        fBodyAccJerk-meanFreq()-X
        fBodyAccJerk-meanFreq()-Y
        fBodyAccJerk-meanFreq()-Z
               fBodyGyro-mean()-X
               fBodyGyro-mean()-Y
               fBodyGyro-mean()-Z
                fBodyGyro-std()-X
                fBodyGyro-std()-Y
                fBodyGyro-std()-Z
           fBodyGyro-meanFreq()-X
           fBodyGyro-meanFreq()-Y
           fBodyGyro-meanFreq()-Z
               fBodyAccMag-mean()
                fBodyAccMag-std()
           fBodyAccMag-meanFreq()
       fBodyBodyAccJerkMag-mean()
        fBodyBodyAccJerkMag-std()
   fBodyBodyAccJerkMag-meanFreq()
          fBodyBodyGyroMag-mean()
           fBodyBodyGyroMag-std()
      fBodyBodyGyroMag-meanFreq()
      fBodyBodyGyroJerkMag-mean()
       fBodyBodyGyroJerkMag-std()
      fBodyBodyGyroJerkMag-meanFreq()
              tbodyacc-mean()-x
              tbodyacc-mean()-y
              tbodyacc-mean()-z
               tbodyacc-std()-x
               tbodyacc-std()-y
               tbodyacc-std()-z
           tgravityacc-mean()-x
           tgravityacc-mean()-y
           tgravityacc-mean()-z
            tgravityacc-std()-x
            tgravityacc-std()-y
            tgravityacc-std()-z
          tbodyaccjerk-mean()-x
          tbodyaccjerk-mean()-y
          tbodyaccjerk-mean()-z
           tbodyaccjerk-std()-x
           tbodyaccjerk-std()-y
           tbodyaccjerk-std()-z
        tbodygyro-mean()-x
              tbodygyro-mean()-y
              tbodygyro-mean()-z
               tbodygyro-std()-x
               tbodygyro-std()-y
               tbodygyro-std()-z
          tbodygyrojerk-mean()-x
          tbodygyrojerk-mean()-y
          tbodygyrojerk-mean()-z
           tbodygyrojerk-std()-x
           tbodygyrojerk-std()-y
           tbodygyrojerk-std()-z
              tbodyaccmag-mean()
               tbodyaccmag-std()
           tgravityaccmag-mean()
            tgravityaccmag-std()
          tbodyaccjerkmag-mean()
           tbodyaccjerkmag-std()
             tbodygyromag-mean()
              tbodygyromag-std()
         tbodygyrojerkmag-mean()
          tbodygyrojerkmag-std()
               fbodyacc-mean()-x
               fbodyacc-mean()-y
               fbodyacc-mean()-z
                fbodyacc-std()-x
                fbodyacc-std()-y
                fbodyacc-std()-z
           fbodyacc-meanfreq()-x
           fbodyacc-meanfreq()-y
           fbodyacc-meanfreq()-z
           fbodyaccjerk-mean()-x
           fbodyaccjerk-mean()-y
           fbodyaccjerk-mean()-z
            fbodyaccjerk-std()-x
            fbodyaccjerk-std()-y
            fbodyaccjerk-std()-z
       fbodyaccjerk-meanfreq()-x
       fbodyaccjerk-meanfreq()-y
       fbodyaccjerk-meanfreq()-z
              fbodygyro-mean()-x
              fbodygyro-mean()-y
              fbodygyro-mean()-z
               fbodygyro-std()-x
               fbodygyro-std()-y
               fbodygyro-std()-z
          fbodygyro-meanfreq()-x
          fbodygyro-meanfreq()-y
          fbodygyro-meanfreq()-z
              fbodyaccmag-mean()
               fbodyaccmag-std()
          fbodyaccmag-meanfreq()
      fbodybodyaccjerkmag-mean()
       fbodybodyaccjerkmag-std()
  fbodybodyaccjerkmag-meanfreq()
         fbodybodygyromag-mean()
          fbodybodygyromag-std()
     fbodybodygyromag-meanfreq()
     fbodybodygyrojerkmag-mean()
      fbodybodygyrojerkmag-std()
 fbodybodygyrojerkmag-meanfreq()
               TBODYACC-MEAN()-X
               TBODYACC-MEAN()-Y
               TBODYACC-MEAN()-Z
                TBODYACC-STD()-X
                TBODYACC-STD()-Y
                TBODYACC-STD()-Z
            TGRAVITYACC-MEAN()-X
            TGRAVITYACC-MEAN()-Y
            TGRAVITYACC-MEAN()-Z
             TGRAVITYACC-STD()-X
             TGRAVITYACC-STD()-Y
             TGRAVITYACC-STD()-Z
           TBODYACCJERK-MEAN()-X
           TBODYACCJERK-MEAN()-Y
           TBODYACCJERK-MEAN()-Z
            TBODYACCJERK-STD()-X
            TBODYACCJERK-STD()-Y
            TBODYACCJERK-STD()-Z
              TBODYGYRO-MEAN()-X
              TBODYGYRO-MEAN()-Y
              TBODYGYRO-MEAN()-Z
               TBODYGYRO-STD()-X
               TBODYGYRO-STD()-Y
               TBODYGYRO-STD()-Z
          TBODYGYROJERK-MEAN()-X
          TBODYGYROJERK-MEAN()-Y
          TBODYGYROJERK-MEAN()-Z
           TBODYGYROJERK-STD()-X
           TBODYGYROJERK-STD()-Y
           TBODYGYROJERK-STD()-Z
              TBODYACCMAG-MEAN()
               TBODYACCMAG-STD()
           TGRAVITYACCMAG-MEAN()
            TGRAVITYACCMAG-STD()
          TBODYACCJERKMAG-MEAN()
           TBODYACCJERKMAG-STD()
             TBODYGYROMAG-MEAN()
              TBODYGYROMAG-STD()
         TBODYGYROJERKMAG-MEAN()
          TBODYGYROJERKMAG-STD()
               FBODYACC-MEAN()-X
               FBODYACC-MEAN()-Y
               FBODYACC-MEAN()-Z
                FBODYACC-STD()-X
                FBODYACC-STD()-Y
                FBODYACC-STD()-Z
           FBODYACC-MEANFREQ()-X
           FBODYACC-MEANFREQ()-Y
           FBODYACC-MEANFREQ()-Z
           FBODYACCJERK-MEAN()-X
           FBODYACCJERK-MEAN()-Y
           FBODYACCJERK-MEAN()-Z
            FBODYACCJERK-STD()-X
            FBODYACCJERK-STD()-Y
            FBODYACCJERK-STD()-Z
       FBODYACCJERK-MEANFREQ()-X
       FBODYACCJERK-MEANFREQ()-Y
       FBODYACCJERK-MEANFREQ()-Z
              FBODYGYRO-MEAN()-X
              FBODYGYRO-MEAN()-Y
              FBODYGYRO-MEAN()-Z
               FBODYGYRO-STD()-X
               FBODYGYRO-STD()-Y
               FBODYGYRO-STD()-Z
          FBODYGYRO-MEANFREQ()-X
          FBODYGYRO-MEANFREQ()-Y
          FBODYGYRO-MEANFREQ()-Z
              FBODYACCMAG-MEAN()
               FBODYACCMAG-STD()
          FBODYACCMAG-MEANFREQ()
      FBODYBODYACCJERKMAG-MEAN()
       FBODYBODYACCJERKMAG-STD()
  FBODYBODYACCJERKMAG-MEANFREQ()
         FBODYBODYGYROMAG-MEAN()
          FBODYBODYGYROMAG-STD()
     FBODYBODYGYROMAG-MEANFREQ()
     FBODYBODYGYROJERKMAG-MEAN()
      FBODYBODYGYROJERKMAG-STD()
 FBODYBODYGYROJERKMAG-MEANFREQ()

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

# 3. TRANSFORMATIONS DONE ON THE ORIGINAL DATA SETS.

first, a single data  table was created by
- merging *activity labels* for training data to the train data set and those for testing data to the test data set
- merging *subject* for both training and testing data sets to their respective data sets.
- merging the *train* and *test* data sets to create one data set, *fulldata*

then, variable names for *fulldata* were changed to descriptive names
- load the *features.txt* dataset
- append *feature names* as variable names for *fulldata*

next, a second data table, *fulldata2* was created by isolating only the variables that measured *mean* or *standard deviation* of the features from the original data set.

then the *activity labels* were replaced with descriptive *activity names* and the first tidy data set *tidy_data.txt* was created and saved.

lastly, a second independent tidy data set was created from *tidy_data*. This data set includes the *averages* *of the variables in tidy_data by*
- activity
- subject

first, a data table for averages by activity, *avg_by_activity* was created. 
the variables in this data table were changed to *lowercase* to differentiate them from the respective variable names in *tidy_data*

then, a second data table was created for averages by subject * avg_by_subject*.
the variables in this data table were changed to *UPPERCASE* to differentiate them from the respective variable names in the both *tidy_data* and *avg_by_activity* data tables

these three data tables were then merged to create the second independent tidy data set, *tidy_with_avg.txt*
(answer to question 5)


