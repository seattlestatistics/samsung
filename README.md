*How the  run_analysis.R script works*

There is a single script,  run_analysis.R, which performs several talks.

Firstly, it reads the files containing the training and test data, for the the Samsung project.  It also reads indexes of the 30 subjects and 6 activities, as well as the names of the 561 different measurements - which are the variables.  It recodes the numerical names of activities, into text names.  It then creates a combined data set, with each row of the 561 variable columns categorized according to activity and subject.

This combined data set is used to create a data frame which lists all 561 measures, with their means and standard deviations.  This is done by cycling through the 561 variables, using a function and a sapply() call:

Mean <- vector()
SD <- vector()
Measurement <- vector()
means_sd <- function(x){
  Measurement[x] <<- variables[x]
  Mean[x] <<- mean(combined[,x])
  SD[x] <<- sd(combined[,x])
}
sapply(1:561,means_sd)

The resulting data frame is saved onto disk, and outputted onto the screen via print().

Finally, a data frame is created which gives the means of each measure, for each activity and each subject.  

To do this, two matrixes are created, on for the activities, the other for the subjects.  They are the combined, and converted into a data frame.  

Here is how the activity matrix is created:

actmatrix <- matrix(nrow=561,ncol=6)
actfun <- function(x){
  a <- tapply(combined[,x],combined$activity,mean)
  for(i in 1:6){
    actmatrix[x,i] <<- a[i]
  }
}
sapply(1:561,actfun)

The measure names, and the column names are added.  The final data frame is saved to disk, as a text file.
