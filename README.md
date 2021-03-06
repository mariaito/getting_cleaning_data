==================================================================
Getting and Cleaning Data
Week 4
Peer graded assignment
README
==================================================================
##Instructions 
(Avaliable at: https://www.coursera.org/learn/data-cleaning)

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
###Review criteria

    The submitted data set is tidy.
    The Github repo contains the required scripts.
    GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
    The README that explains the analysis files is clear and understandable.
    The work submitted for this project is the work of the student who submitted it.

####Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    1-Merges the training and the test sets to create one data set.
    2-Extracts only the measurements on the mean and standard deviation for each measurement.
    3-Uses descriptive activity names to name the activities in the data set
    4-Appropriately labels the data set with descriptive variable names.
    5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

==================================================================
###The repo contains the following files and directories:

1-dataset: the dataset directory, downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . The files that were not utilized in the current analysis were removed from the folder.

2-codebook.md: a file containing descriptions for the variables available in run_analysis.R 

3-run_analysis.R: the code developed for transforming the data available in the *dataset* directory into the *w04project.txt* file 

4-w04project.txt: the output to the *run_analysis.R* code 

5-README.md: this file, which contains the necessary explanations for the understanding of the content in this repo 

==================================================================
###Instructions for running the code
a-Download the content in this repo 

b-Alter the *run_analysis.R* with the directory you would like to work on, by replacing "/home/maria/R/" with the desired path 

c-Open an R console and set the working directory with the same directory as the above topic 

d-Source the code: source('run_analysis.R') 
