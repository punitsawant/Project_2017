#! /bin/bash
#go to directory where all files are placed
cd /root/Project/staging/exercise_1
# Remove header lines from 5 files and store them with new file names in the linux system
tail -n +2 "Hospital General Information.csv" >hospitals.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" >effective_care.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" >readmissions.csv
tail -n +2 "Measure Dates.csv" >measures.csv 
tail -n +2 "hvbp_hcahps_11_10_2016.csv" >surveys_responses.csv

#Move these new files to HDFS system
hdfs dfs -mkdir /user/root/hospital_compare
hdfs dfs -put hospitals.csv /user/root/hospital_compare
hdfs dfs -put effective_care.csv /user/root/hospital_compare
hdfs dfs -put readmissions.csv /user/root/hospital_compare
hdfs dfs -put measures.csv /user/root/hospital_compare
hdfs dfs -put surveys_responses.csv /user/root/hospital_compare

exit
