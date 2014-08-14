*How the  run_analysis.R script works*

There is a single script,  run_analysis.R, which performs several tasks.

Firstly, it reads the files containing the training and test data, for the the Samsung project.  It also reads indexes of the 30 subjects and 6 activities, as well as the names of the 561 different measurements - which are the variables.  It recodes the numerical names of activities, into text names.  It then creates a combined data set, with each row of the 561 variable columns categorized according to activity and subject.

This combined data set is used to create a data frame which lists all 561 measures, with their means and standard deviations.  This is done by cycling through the 561 variables, using a function and a sapply() call.

The resulting data frame is saved onto disk, and outputted onto the screen via print().

The first six rows are as follows:

        Measurement        Mean         SD
        
1 tBodyAcc-mean()-X   0.27434726  0.06762780

2 tBodyAcc-mean()-Y  -0.01774349  0.03712817

3 tBodyAcc-mean()-Z  -0.10892503  0.05303309

4  tBodyAcc-std()-X  -0.60778382  0.43869383

5  tBodyAcc-std()-Y  -0.51019138  0.50023977

6  tBodyAcc-std()-Z  -0.61306430  0.40365658

Finally, a data frame is created which gives the means of each measure, for each activity and each subject.  

To do this, two matrices are created, one for the activities, the other for the subjects.  They are then combined, and converted into a data frame.  

The measure names, and the column names, are added.  The final data frame is saved to disk, as a text file.
