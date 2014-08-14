*Data, variables and tranformations*

The data is taken from a Samsung mobile device, and represents the records from a number of activities.  The aim of the original project, for which the data was created, was to predict activity from the data recordings taken by the Samsung.

There were six activites: *sitting*, *laying*, *standing*, *walking*, *walking upstairs* and *walking downstairs*.

There were thirty subjects.

The data set consisted of 10,299 observations, from the 30 subjects, performing the six activities.  Initially these observations were divided into two groups, training and testing.  However the present project involved the combining of the test and traing data, into one data set.

Each observation, aside from being categorized according to activity and subject, had  561 variables, which represented the different measurements that the Samsung device was taking.  

Examples of these measurements included:

 *tGravityAcc-arCoeff()-X,3*
 
 *tGravityAcc-arCoeff()-X,4* 
 
 *tGravityAcc-arCoeff()-Y,1*
 
 *tGravityAcc-arCoeff()-Y,2*
 
 *tGravityAcc-arCoeff()-Y,3*

Some of the variable names were transformed.  In the raw data, the activities and the names of the measurements were in files separate from the data, so it was necessary to merge the data, and for measurements to append the variable names.  The activity names were converted from a numerical to a text format.

A new data set was created, which had the means for each subject and each activity, for each measurement.  In the first column, *Measure*, the 561 names of the measurements were listed - see above, for examples.  There were 36 additional columns.  These were the six acivities, and the 30 subjects, in the format *Subject1* through to *Subject30*.  


