*Data, variables and tranformations*

The data is taken from a Samsung mobile device, and represents the records from a number of activities.  The aim of the original project, for which the data was created, was to predict activity from the data recordings taken by the Samsung.

There were six activites: *sitting*, *laying*, *standing*, *walking*, *walking upstairs* and *walking downstairs*.

There were thirty subjects.

The data set consisted of 10,299 observations, from the 30 subjects, performing the six activities.  Initially these observations were divided into two groups, training and testing.  However the present project involved the combining of the test and traing data, into one data set.

Each observation, aside from being categorized according to activity and subject, had  561 variables, which represented the different measurements that the Samsung device was taking.  

Examples of these measurements included:

```
 tGravityAcc-arCoeff()-X,3
 tGravityAcc-arCoeff()-X,4 
 tGravityAcc-arCoeff()-Y,1
 tGravityAcc-arCoeff()-Y,2
 tGravityAcc-arCoeff()-Y,3
 ```

Some of the variable names were transformed.  In the raw data, the activities and the names of the measurements were in files separate from the data, so it was necessary to merge the data, and for measurements to append the variable names. The activity names were converted from a numerical to a text format.

The script used in the present project included an output of the means and standard deviations of each of the 561 measures.  Results for the first six measures are as follows:

```
        Measurement        Mean         SD
1 tBodyAcc-mean()-X  0.27434726 0.06762780
2 tBodyAcc-mean()-Y -0.01774349 0.03712817
3 tBodyAcc-mean()-Z -0.10892503 0.05303309
4  tBodyAcc-std()-X -0.60778382 0.43869383
5  tBodyAcc-std()-Y -0.51019138 0.50023977
6  tBodyAcc-std()-Z -0.61306430 0.40365658
```

A new data set was created, which had the means for each subject and each activity, for each measurement.  In the first column, *Measure*, the 561 names of the measurements were listed - see above, for examples.  There were 36 additional columns.  These were the six acivities, and the 30 subjects, in the format *Subject1* through to *Subject30*.  The first two rows of this data set are as follows:

```
> head(measures,2)
            Measure      Laying     Sitting    Standing     Walking Walking_Downstairs Walking_Upstairs    Subject1
1 tBodyAcc-mean()-X  0.26864864  0.27305961  0.27915349  0.27633688         0.28813723       0.26229465  0.26569692
2 tBodyAcc-mean()-Y -0.01831773 -0.01268957 -0.01615189 -0.01790683        -0.01631193      -0.02592329 -0.01829817
     Subject2    Subject3    Subject4    Subject5   Subject6    Subject7   Subject8    Subject9   Subject10
1  0.27311312  0.27342872  0.27418311  0.27917796  0.2723766  0.27021170  0.2707591  0.27031384  0.27684847
2 -0.01913232 -0.01785607 -0.01480815 -0.01548335 -0.0175697 -0.01879049 -0.0181895 -0.02094666 -0.01783579
    Subject11  Subject12   Subject13   Subject14   Subject15   Subject16  Subject17   Subject18   Subject19
1  0.27658531  0.2736087  0.27589588  0.27018460  0.27821341  0.27788744  0.2740295  0.27632415  0.26972349
2 -0.01912725 -0.0183372 -0.01765048 -0.01625482 -0.01646448 -0.01585679 -0.0175416 -0.01728315 -0.01820315
   Subject20   Subject21   Subject22   Subject23   Subject24   Subject25   Subject26   Subject27   Subject28
1  0.2684258  0.27746653  0.27476769  0.27349325  0.27676705  0.27530147  0.27303658  0.27726457  0.27753255
2 -0.0175913 -0.01766646 -0.01682736 -0.01958926 -0.01768225 -0.01932218 -0.01616873 -0.01679692 -0.01917214
    Subject29   Subject30
1  0.27911152  0.27630584
2 -0.01847195 -0.01758561
> 

```


