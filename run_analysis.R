##Checking if directory exists, downloading and unzipping the folder
if(!file.exists("./data")){dir.create("./data")}
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")

##Read in Test/Train data and labels, as well as Activity labels and Feature names
TestSet <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
TestLabels <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
TrainSet <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
TrainLabels <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
ActivityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
Features <- read.table("./data/UCI HAR Dataset/features.txt")

##setting all feature names to lower case
Features$V2 <- tolower(Features$V2)

##subsetting features/train/test data frames to only include mean and std measurements
MeanIndex <- grep(pattern="mean()",x=Features$V2,fixed=TRUE)
STDIndex <- grep(pattern="std()",x=Features$V2,fixed=TRUE)
MeanSTDIndex <- c(MeanIndex,STDIndex)
Features2 <- as.character(Features[MeanSTDIndex,2])
TrainSet2 <- TrainSet[,MeanSTDIndex]
TestSet2 <- TestSet[,MeanSTDIndex]

##removing "_" and "()" from the feature names
Features3 <- gsub("-","",Features2)
Features4 <- gsub("()","",Features3,fixed=TRUE)

##setting/tidying of column names for Train,Test and activity labels data
colnames(TrainSet2) <- Features4
colnames(TestSet2) <- Features4
colnames(TrainLabels) <- "activityid"
colnames(TestLabels) <- "activityid"
colnames(ActivityLabels) <- c("activityid","activityname")
LowerLabels <- tolower(ActivityLabels[,2])
ActivityLabels$activityname <- LowerLabels

##merge train/test data sets with activity label data to extract activity names detail
TrainActivity <- merge(x=TrainLabels,y=ActivityLabels,by.x="activityid",by.y="activityid",sort=FALSE)
TestActivity <- merge(x=TestLabels,y=ActivityLabels,by.x="activityid",by.y="activityid",sort=FALSE)

##Add "activityname" as a column to the train/test data sets
TrainSet3 <- cbind(TrainActivity$activityname,TrainSet2)
TestSet3 <- cbind(TestActivity$activityname,TestSet2)
names(TrainSet3)[names(TrainSet3)== "TrainActivity$activityname"] <- "activityname"
names(TestSet3)[names(TestSet3)== "TestActivity$activityname"] <- "activityname"

##read in subject data and add to test/train data sets
SubjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
SubjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- SubjectTrain$V1 
subjecttest <- SubjectTest$V1
TrainSet4 <- cbind(subjecttrain,TrainSet3)
TestSet4 <- cbind(subjecttest,TestSet3)
names(TrainSet4)[names(TrainSet4)== "subjecttrain"] <- "subject"
names(TestSet4)[names(TestSet4)== "subjecttest"] <- "subject"

##merge test/train data sets into one "Master" data set
Master <- rbind(TrainSet4,TestSet4)

##using dplyr package to produce and output "TidyDataSet" with averages by subject and activity name
Mastercols <- colnames(Master)
Mastercols2 <- Mastercols[3:68]
library(dplyr)
Tidy <- Master %>% group_by(subject,activityname) %>%
summarise_at(vars(Mastercols2),mean)
write.table(Tidy,file="./TidyDataSet.txt",row.names = FALSE)
