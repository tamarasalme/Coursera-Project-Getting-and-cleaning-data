---
title: "Code book for tidydata.txt"
author: "tamarasalme"
date: "13 de marzo de 2016"
output: html_document
---

The data set "tidydata.txt" contains the following variables:

### IDs

* <b>1: "subjectid"</b>: Each ID number identifies the subject who carried out the experiment. Its range is from 1 to 30.
* <b>2: "activityid"</b>: Name of the activity that performed the subject. There are 6 different activities:    
        + Walking  
        + Walking Upstairs  
        + Walking Downstairs  
        + Sitting  
        + Standing  
        + Laying  
        
### Mean values

All the variables from column 3 until column 68 are the mean values of a measurement for each subject and activity. All the values are numeric and are bounded within [-1,1].

The following variables contain the mean value of 40 time domain signals:

* Body acceleration mean along x, y and z:  
        3: "timeBodyAcceleration-mean()-X"                                   
        4: "timeBodyAcceleration-mean()-Y"                                   
        5: "timeBodyAcceleration-mean()-Z"  

* Body acceleration standard deviation along x, y and z:
        6: "timeBodyAcceleration-standarddeviation()-X"                                   
        7: "timeBodyAcceleration-standarddeviation()-Y"                                   
        8: "timeBodyAcceleration-standarddeviation()-Z"

* Gravity acceleration mean along x, y and z:  
        9: "timeGravityAcceleration-mean()-X"                                   
        10: "timeGravityAcceleration-mean()-Y"                                   
        11: "timeGravityAcceleration-mean()-Z"  

* Gravity acceleration standard deviation along x, y and z:
        12: "timeGravityAcceleration-standarddeviation()-X"                                   
        13: "timeGravityAcceleration-standarddeviation()-Y"                                   
        14: "timeGravityAcceleration-standarddeviation()-Z"

* Body acceleration jerk mean along x, y and z:  
        15: "timeBodyAccelerationJerk-mean()-X"                                   
        16: "timeBodyAccelerationJerk-mean()-Y"                                   
        17: "timeBodyAccelerationJerk-mean()-Z"  

* Body acceleration jerk standard deviation along x, y and z:
        18: "timeBodyAccelerationJerk-standarddeviation()-X"                                   
        19: "timeBodyAccelerationJerk-standarddeviation()-Y"                                   
        20: "timeBodyAccelerationJerk-standarddeviation()-Z"
        
* Body gyroscope signal mean along x, y and z:  
        21: "timeBodyGyroscope-mean()-X"                                   
        22: "timeBodyGyroscope-mean()-Y"                                   
        23: "timeBodyGyroscope-mean()-Z"  

* Body gyroscope signal standard deviation along x, y and z:
        24: "timeBodyGyroscope-standarddeviation()-X"                                   
        25: "timeBodyGyroscope-standarddeviation()-Y"                                   
        26: "timeBodyGyroscope-standarddeviation()-Z"

* Body gyroscope jerk signal mean along x, y and z:  
        27: "timeBodyGyroscopeJerk-mean()-X"                                   
        28: "timeBodyGyroscopeJerk-mean()-Y"                                   
        29: "timeBodyGyroscopeJerk-mean()-Z"  

* Body gyroscope jerk signal standard deviation along x, y and z:
        30: "timeBodyGyroscopeJerk-standarddeviation()-X"                                   
        31: "timeBodyGyroscopeJerk-standarddeviation()-Y"                                   
        32: "timeBodyGyroscopeJerk-standarddeviation()-Z"

* Mean and standard deviation of the body acceleration magnitude:  
        33: "timeBodyAccelerationMagnitude-mean()"                                    
        34: "timeBodyAccelerationMagnitude-standarddeviation()"        

* Mean and standard deviation of the gravity acceleration magnitude:  
        35: "timeGravityAccelerationMagnitude-mean()"                                    
        36: "timeGravityAccelerationMagnitude-standarddeviation()" 

* Mean and standard deviation of the body acceleration jerk magnitude:  
        37: "timeBodyAccelerationJerkMagnitude-mean()"                                    
        38: "timeBodyAccelerationJerkMagnitude-standarddeviation()"  
        
* Mean and standard deviation of the body gyroscope magnitude:  
        39: "timeBodyGyroscopeMagnitude-mean()"                                    
        40: "timeBodyGyroscopenMagnitude-standarddeviation()"  

* Mean and standard deviation of the body gyroscope jerk magnitude:  
        41: "timeBodyGyroscopeJerkMagnitude-mean()"                                    
        42: "timeBodyGyroscopenJerkMagnitude-standarddeviation()"  



The following variables contain the mean value of 26 frequency domain signals:

* Body acceleration mean along x, y and z:  
        43: "frequencyBodyAcceleration-mean()-X"                                   
        44: "frequencyBodyAcceleration-mean()-Y"                                   
        45: "frequencyBodyAcceleration-mean()-Z"  

* Body acceleration standard deviation along x, y and z:
        46: "frequencyBodyAcceleration-standarddeviation()-X"                                   
        47: "frequencyBodyAcceleration-standarddeviation()-Y"                                   
        48: "frequencyBodyAcceleration-standarddeviation()-Z"  

* Body acceleration jerk mean along x, y and z:  
        49: "frequencyBodyAccelerationJerk-mean()-X"                                   
        50: "frequencyBodyAccelerationJerk-mean()-Y"                                   
        51: "frequencyBodyAccelerationJerk-mean()-Z"  

* Body acceleration jerk standard deviation along x, y and z:
        52: "frequencyBodyAccelerationJerk-standarddeviation()-X"                                   
        53: "frequencyBodyAccelerationJerk-standarddeviation()-Y"                                   
        54: "frequencyBodyAccelerationJerk-standarddeviation()-Z"

* Body gyroscope signal mean along x, y and z:  
        55: "frequencyBodyGyroscope-mean()-X"                                   
        56: "frequencyBodyGyroscope-mean()-Y"                                   
        57: "frequencyBodyGyroscope-mean()-Z"  

* Body gyroscope signal standard deviation along x, y and z:
        58: "frequencyBodyGyroscope-standarddeviation()-X"                                   
        59: "frequencyBodyGyroscope-standarddeviation()-Y"                                   
        60: "frequencyBodyGyroscope-standarddeviation()-Z"

* Mean and standard deviation of the body acceleration magnitude:  
        61: "frequencyBodyAccelerationMagnitude-mean()"                                    
        62: "frequencyBodyAccelerationMagnitude-standarddeviation()"        

* Mean and standard deviation of the body acceleration jerk magnitude:  
        63: "frequencyBodyBodyAccelerationJerkMagnitude-mean()"                                    
        64: "frequencyBodyBodyAccelerationJerkMagnitude-standarddeviation()"  
        
* Mean and standard deviation of the body gyroscope magnitude:  
        65: "frequencyBodyBodyGyroscopeMagnitude-mean()"                                    
        66: "frequencyBodyBodyGyroscopenMagnitude-standarddeviation()"  

* Mean and standard deviation of the body gyroscope jerk magnitude:  
        67: "timeBodyBodyGyroscopeJerkMagnitude-mean()"                                    
        68: "timeBodyBodyGyroscopenJerkMagnitude-standarddeviation()" 
