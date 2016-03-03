id
Subject ID

Activity
Type of activity user was performing when accelerometer data was captured

	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING


The following variables represent average values for each subject by activity.

Time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise

tBodyAcc-XYZ
Body acceleration signal.

tGravityAcc-XYZ
Gravity acceleration signal

tBodyAccJerk-XYZ
Body acceleration jerk calculated by deriving body acceleration signal in time.

tBodyGyro-XYZ
Body gyroscopic signal.

tBodyGyroJerk-XYZ
Body gyroscopic jerk calculated by deriving body gyroscopic signal in time.

tBodyAccMag
Magnitude of body acceleration calculated via Euclidian Norm.

tGravityAccMag
Magnitude of gravity acceleration calculated via Euclidian Norm.

tBodyAccJerkMag
Magnitude of body acceleration jerk calculated via Euclidian Norm.

tBodyGyroMag
Magnitude of body gyroscopic signal calculated via Euclidian Norm.

tBodyGyroJerkMag
Magnitude of  calculated via Euclidian Norm.


Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The final set of variables include a mean() and std() suffix representing the

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
