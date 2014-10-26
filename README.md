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
  3. Testing data procssing.
  4. Combining both training data and testing data.
  5. Calculating the mean values by subjects and activities based on the dataset of the part 4.
# Brief of codebook ( codebook.pdf)
