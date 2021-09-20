# Codebook

This codebook describes the tidy data set and its descriptive variable names.

## The variable names

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