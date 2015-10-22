## Codebook getting and cleaning data Project assigment

### Data
The data is gathered from the accelerometers from the Samsung Galaxy S smartphone. You can find a description of this data [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data is stored in a test set and a train set.

You can find the source [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### naming conventions
Naming conventions are followed as decribed in de Google R Style Guide.


### Used data
From all the smartphone data only the mean and standard deviation is used. This is done by grepping all the features with the text Mean or Std in the featurename and with the help of these selecting the data from the raw data.

The test data subset and train data subset is combined to one dataset.

### Tidy data set
Variable names of the raw data has been changed as follows:
+ Replaced -mean with Mean
+ Replaced -std with Std
+ Removed parenthesis ()

The varaible nanes are camelCase as described in Google R Style Guide.

From out of the dataframe which contains all the required data a tidy dataset is created.




