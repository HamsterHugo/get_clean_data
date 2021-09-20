# The final Assignment of Getting and Cleaning Data

This is my solution to the final Assignment of the course "Getting and Cleaning
data" in the Data Science Specialization.

# The exercise
The given raw data are measurements for recognition human activity using a smart phone. In more detail, 30 volunteers performed six activities, namely laying, sitting, standing, walking, walking upstairs and walking downstairs, wearing a smartphone. During the activities the smart phone captured via the embedded accelerometer and gyroscope 3-axial linear acceleration and 3-axial angular velocity. The data set was normalized to the interval [-1,1] and split into a training and a test set. The training set contains 70 %  and the test set contains 30 % of the data.

According to the Assignment it is the task to merge the training and test set, extract the mean and standard deviation measurements, add the subject column and the activity column and summarize the average of all measurements for each subject and each activity in a tidy data set.

# Content

It contains the following files:
- This *README.md* file,  
- the folder *UCI HAR Dataset*, containing the raw data with its own *README.txt* file,  
- the *Codebook*, describing the variables names,  
- the *tidy_data_set.txt* file, which contains the tidy data set according to the
exercise,  
- the *run_analysis.R* file, that generated the *tidy_data_set.txt* file.

# The Analysis
The *run_analysis.R* file creates the tidy data set from the raw data in six steps:
- Step 1: The training and test data are loaded together with the activity and subject columns for the training and test sets.  
- Step 2: The data sets are merged and the mean and standard deviation measurements are extracted. Furthermore, the Id in the activity column are replaced with the activity labels.  
- Step 3: The variables are labeled with descriptive names.  
- Step 4: Add the subject and activity column to the data set.  
- Step 5: Create the final tidy data set.  
- Step 6: Save the tidy data set in the file *final_tidy_data.txt* and view the data.

OS: Windows 10

Version: R version 4.1.0 (2021-05-18)

# The data set

The file *final_data_set.txt* contains a table with 180 rows and 81 columns.
The data set is tidy since it matches the criteria
- **Each variable forms a column:** There are 81 variables. The first is the subject Id of the volunteer who performed the activity. The second gives the performed activity. The remaining 79 columns contain the different mean and standard deviation measurements captured by the smart phone.  
- **Each observation forms a row:** Each row represents one volunteer performing one of the six activities, hence there row number is 30*6 = 180.  
- **Each type of observational unit forms a table:** All data are in one table which summarizes all measurements for all volunteers and all activities.