This script creates a set of tidy data obtained from accelerometers and gyroscope from the Samsung Galaxy S smartphone.

Data was obtained from this website: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

There are 2 datasets of interest in here: X_test.txt and X_train.txt. Each column of that data set corresponds to a feature defined in features.txt. Each row corresponds to a particular subject defined in subject_test.txt and subject_train.txt. Each row also corresponds to a particular activity defined numerically in y_test.txt and y_train.txt. The numerical translation of the activity is stored in activity_labels.txt.

The script modifies this data as follows:

1. Reads in the test and train data (X_test.txt and X_train.txt)

2. Assigns column names from the features.txt file and makes them unique (adds a number to duplicate features)

3. Adds 2 columns: id and activity from subject_test/train.txt and y_test/train.txt. Changes the numerical activity to the full name for the activity as defined in activity_labels.txt

4. Merges the train and test sets together by simply making one big data frame with all the rows of train and test concatenated with rbind.

5. Extracts only measurements about mean and standard deviation by searching the column names for “mean” and “std”

6. Summarizes the data with the average of each variable for each activity and each subject and then prints it.