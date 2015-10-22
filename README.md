---
output: html_document
---
## Introduction
The result consist of the creating a tidy dataset containing the mean and standard deviation of defined activities.

To produce the resulting data the following steps should be performed:
+ Dowloding the needed data
+ Run script: run_analysis.R

### Downloading the files
+ Files are dowloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
+ The zip-file should be stored in your working directory.
+ Extract the downloaded zip file into your working directory
+ Check if the following files are there

    + activity_labels.txt

    + features.txt

    + features_info.txt

    + subject_test.txt

    + subject-train.txt

    + X_test.txt

    + X_train.txt

    + y_test.txt

    + y_train.txt

### Run script: run_analysis.R
After the needed data is downloade run in R Studio the script run.analysis.R

The last step in this script is writing the file tidy.txt which contins the required data.

