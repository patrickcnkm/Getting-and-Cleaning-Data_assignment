#Introduction
  All documents under this repo target to deliver the requirements of the assignment from the course of Coursera -Getting and Cleaning Data - analyzing the experiment data from Human Activity Recognition Using Samsung Galaxy S II. 
 
  The detail requirements information can be found out in the following link:
  https://class.coursera.org/getdata-008/human_grading/view/courses/972586/assessments/3/submissions.
  
  Under this repo, 2 documents are presented:
  - run_analysis.R: R script to achieve the analysis results required by the assignment.
  - codebook.pdf: file to explain the usage of each variable in the dataset used in the above R script.


  The usage or brief of both of files are laid down in the following.
  
  
# Usage of R script (run_analysis.R)
  The whole script is consisted of the following parts:
  1. Initialization and preparation of the subsequent coding, that includes:
     - Loading the library "plyr" for the subsequent functions such as 'join'.
     - Setting the working directory for the whole script, that is base of loading / writing files.
     - Loading the common data into R ( Feature, activity label).
     - Assigning the meaningful column names to the loaded tables ( feature, activity label)
  2. Training data processing.
     - Loading the training data into R ( subject, activity, recording / processed training data).
     - Assining the meaningful columns names to the loaded tables from above.
     - Joining the tables bewteen activity and activity label.
     - Combining the datasets among subject, activity with label, recording / processed training data with new column "type" to indicate those data come from training.
  3. Testing data procssing - repeating the same process in above 2 for the test data.
  4. Combining both training data and testing data.
  5. Calculating the mean values by subjects and activities based on the dataset of the part 4, then output the data to be a txt file.
# Brief of codebook ( codebook.pdf)
   This file is used to describe the key dataset produced from the part 4 in the above R script. In this file, the description, available values(for qualitative fields - subject, activity), unit ( for all quantitative measurement fields) on each variable are presented to let auidence know the usage of each variable.
