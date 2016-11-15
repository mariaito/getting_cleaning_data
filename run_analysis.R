
setwd("/home/maria/R")

#load dplyr
library(dplyr)

#read general files (for test and train)
activity_labels<-read.table('/home/maria/R/dataset/activity_labels.txt')
names(activity_labels)<-c("Number","Activity")
features<-read.table('/home/maria/R/dataset/features.txt')

#read test files
y_test<-read.table('/home/maria/R/dataset/test/y_test.txt')
X_test<-read.table('/home/maria/R/dataset/test/X_test.txt')
subject_test<-read.table('/home/maria/R/dataset/test/subject_test.txt')
names(subject_test)<-"Subject"

#read train files
y_train<-read.table('/home/maria/R/dataset/train/y_train.txt')
X_train<-read.table('/home/maria/R/dataset/train/X_train.txt')
subject_train<-read.table('/home/maria/R/dataset/train/subject_train.txt')
names(subject_train)<-"Subject"
#===================================================================================
#STEP1: Merge the training and the test sets to create one data set.
y_data<-rbind(y_test, y_train)
X_data<-rbind(X_test, X_train)
subject_data<-rbind(subject_test, subject_train)



#===================================================================================
#STEP2: Extract only the measurements on the mean and standard deviation for each measurement. 
#name X_data columns, search for "Mean" and "Std"
names(X_data)<-features[,2]

X_data_2<-cbind(X_data[,grep("[Mm][Ee][Aa][Nn]",colnames(X_data))],X_data[,grep("[Ss][Tt][Dd]",colnames(X_data))])
#Xtrain_final<-cbind(X_train[,grep("[Mm][Ee][Aa][Nn]",colnames(X_train))],X_train[,grep("[Ss][Tt][Dd]",colnames(X_train))])

#===================================================================================
#STEP3: Use descriptive activity names to name the activities in the data set
#attribute activity labels to y_data
y_data <- mutate(y_data,Activity=activity_labels[y_data[, 1], 2])

#bind all Train and test tables
Activity<-y_data[,2]
Table<-cbind(subject_data,Activity,X_data_2)
#TrainTable<-cbind(subject_train,activity_train$Activity,Xtrain_final)

#===================================================================================
#STEP4: Appropriately label the data set with descriptive variable names. 

names(Table)<-gsub("^t", "Time", names(Table))
names(Table)<-gsub("^f", "Frequency", names(Table))
names(Table)<-gsub("Acc", "Accelerometer", names(Table))
names(Table)<-gsub("Gyro", "Gyroscope", names(Table))
names(Table)<-gsub("BodyBody", "Body", names(Table))
names(Table)<-gsub("Mag", "Magnitude", names(Table))
#names(Table)<-gsub("tBody", "TimeBody", names(Table))
names(Table)<-gsub("-mean()", "Mean", names(Table), ignore.case = TRUE)
names(Table)<-gsub("-std()", "STD", names(Table), ignore.case = TRUE)
names(Table)<-gsub("-freq()", "Frequency", names(Table), ignore.case = TRUE)
names(Table)<-gsub("angle", "Angle", names(Table))
names(Table)<-gsub("gravity", "Gravity", names(Table))
names(Table)<-gsub("()", "", names(Table), fixed = TRUE)

#===================================================================================
#STEP5: Create a second, independent tidy data set with the average of each variable for each activity and each subject.
#calculate the means
MeansTable<-aggregate(.~Subject+Activity,data=Table,mean)
write.table(MeansTable,"w04project.txt", row.name=FALSE)


