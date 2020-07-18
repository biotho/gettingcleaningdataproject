# Coursera Data Science - Course 3 Getting and Cleaning Data Assignment

This file explains the contents of this repository and gives guidance on how to run the "run_analysis.R" script which outputs summarised average data collected from accelerometers from the Samsung Galaxy S smartphone.

# Contents of Repository

- "README.md"       : R markdown document giving information and instructions on                       the contents of the repository and how to run the                                "run_analysis.R" script

- "CodeBook.md"     : R markdown document describing the variables, data and                           transformations performed to clean and output                                    TidyDataSet.txt

- "run_analysis.R"  : R script that does the following:
                      1.Downloads the Samsung Galaxy S smartphone data
                      2.Unzips the downloaded folder
                      3.Combines the train/test data into one "master" data set
                      4.Labels the columns and rows of the "master" data set with                         subject, activity and mean/std measure details
                      5.Outputs a .txt data set called TidyDataSet which averages
                        the mean/std measures by subject and activity.
                       
- "TidyDataSet.txt" : Text file data set which averages the mean/std measure                           variables by subject and activity


# Running "run_analysis.R"

To run this R script, the user must have the dplyr package installed.