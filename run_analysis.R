train <- read.table("x_train.txt",sep="",header=FALSE)
test <- read.table("x_test.txt",sep="",header=FALSE)
subjtest <- read.table("subject_test.txt",sep="",header=FALSE)
subjtrain <- read.table("subject_train.txt",sep="",header=FALSE)
acttrain <- read.table("y_train.txt",sep="",header=FALSE)
acttest <- read.table("y_test.txt",sep="",header=FALSE)
variables <- read.table("features.txt",sep="",header=FALSE)
variables <- variables[,2]
var2 <- variables
variables <- as.character(variables)
variables <- c(variables,"subject","activity")
acttrain <- acttrain[,1]
acttest <- acttest[,1]
subjtest <- subjtest[,1]
subjtrain <- subjtrain[,1]
train$subject <- subjtrain
test$subject <- subjtest
train$activity <- acttrain
test$activity <- acttest
combined <- rbind(train,test)
combined$activity <- gsub(1,"Walking",combined$activity)
combined$activity <- gsub(2,"Walking Upstairs",combined$activity)
combined$activity <- gsub(3,"Walking Downstairs",combined$activity)
combined$activity <- gsub(4,"Sitting",combined$activity)
combined$activity <- gsub(5,"Standing",combined$activity)
combined$activity <- gsub(6,"Laying",combined$activity)
names(combined) <- variables
Mean <- vector()
SD <- vector()
Measurement <- vector()
means_sd <- function(x){
  Measurement[x] <<- variables[x]
  Mean[x] <<- mean(combined[,x])
  SD[x] <<- sd(combined[,x])
}
sapply(1:561,means_sd)
Output1 <- data.frame(Measurement,Mean,SD)
write.table(Output1,"output1.txt",sep=" ",row.name=FALSE)
rm(Mean);rm(Measurement);rm(SD)

actmatrix <- matrix(nrow=561,ncol=6)
actfun <- function(x){
  a <- tapply(combined[,x],combined$activity,mean)
  for(i in 1:6){
    actmatrix[x,i] <<- a[i]
  }
}
sapply(1:561,actfun)


subjmatrix <- matrix(nrow=561,ncol=30)
subjfun <- function(x){
  a <- tapply(combined[,x],combined$subject,mean)
  for(i in 1:30){
    subjmatrix[x,i] <<- a[i]
  }
}
sapply(1:561,subjfun)
tmatrix <- cbind(actmatrix,subjmatrix)
q5 <- data.frame(tmatrix)
q5 <- cbind(var2,q5)
names(q5) <- c("Measure", "Laying", "Sitting","Standing","Walking","Walking_Downstairs","Walking_Upstairs","Subject1","Subject2","Subject3","Subject4","Subject5","Subject6","Subject7","Subject8","Subject9","Subject10","Subject11","Subject12","Subject13","Subject14","Subject15","Subject16","Subject17","Subject18","Subject19","Subject20","Subject21","Subject22","Subject23","Subject24","Subject25","Subject26","Subject27","Subject28","Subject29","Subject30")
write.table(q5,"measures.txt",sep=" ",row.name=FALSE)
print(Output1)
