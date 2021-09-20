## Codebook

The first two columns describe the subject Id and the activity.


**Column name** | **Description** | **Data Type** | **Unit**
----------------|-----------------|---------------|----------
Subject         | The subject Id of the volunteer performing the activity. | Ordinal | None
Activity | The name of the activity performed by the subject.| Categorical| None

The other 79 variable names are made up of different tokens. The first token is one letter, either a t or an f, which indicates the unit of the variable. Notice that all variables are normalized to the interval [-1,1].

The other tokens describe the variable. Each token is explained in the following table:

**Token**| **Description**
---------|----------------
t | Abbreviation for time domain signal. It is one of two tokens every variable name starts with and indicates the unit of the variable. For this one the unit is the standard gravity unit 'g'.
f | Abbreviation for frequency domain signals. It means that a Fast Fourier Transformation was applied. It is one of two tokens every variable name starts with and indicates the unit of the variable. For this one the unit is radiants/second.
Body | The signal which goes back to the body part of the activity. It is one of two components measured by the smart phone.
Gravity | The signal which goes back to the gravity part of the activity. It is one of two components measured by the smart phone.
Acc | Abbreviation for accelerometer. It indicates that the measurement was captured by the accelerometer of the smart phone.
Gyro | Abbreviation for gyroscope. It indicates that the measuremnt was captured by the gyroscope of the smart phone.
Jerk | Indicates that the measurement was derived in time to obtain the Jerk signal.
Mag | Abbreviation of Magnitude. Gives the magnitude of the measurement calculated using the Euclidean norm.
Mean | Stands for the mean value of the measurement.
Std | Abbreviation for Standard deviation.
Freq | Abbreviation for frequency. Appears only in combination with Mean. It stands for the weighted average of the frequency components to obtain a mean frequency.
X | Indicates that the measurement was taken along the x axis.
Y | Indicates that the measurement was taken along the y axis.
Z | Indicates that the measurement was taken along the z axis.

## Study design

The study is about human activity recognition using smartphones dataset. A group of 30 volunteers wearing a smart phone performed six activities, namely laying, sitting, standing, walking, walking upstairs and walking downstairs. The smart phone is of type Samsung Galaxy S II. Its embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a frequency of 50 Hz. The sensor signals were pre-processed by applying noise filters. Further more, the signals were decomposed into a body acceleration and a gravity part. Finally, the data were normalized to the interval [-1,1] and randomly partitioned into a training and a test set.
According to the Assignment it was the task merge the training and test data set and to extract all measurements which were means or standard deviations. Finally one has to create a tidy data set which summarize the average of these measurements for each subject and activity.