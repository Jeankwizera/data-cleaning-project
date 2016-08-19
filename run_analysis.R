library(tidyr) ; library(plyr) ; library(dplyr) ; library(data.table)

# get data from local directory and unzip
data = "./getdata_projectfiles_UCI HAR Dataset.zip"
uci_dataset = unzip(data)

# load training data
train = read.table("./UCI HAR Dataset/train/X_train.txt")

# load test data
test = read.table("./UCI HAR Dataset/test/X_test.txt")

str(train) ; str(test)

# load training labels and merge them with training data
train_labels = read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(train_labels) = "labels"
train = cbind(train_labels,train)
names(train)

# load testing labels and merge with testing data
test_labels = read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(test_labels) = "labels"
test = cbind(test_labels,test)

# merge subject to train and test data 
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) = "subject"
train = cbind(subject_train, train)

subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) = "subject"
test = cbind(subject_test, test)

# merge train and test data
fulldata = rbind(train,test)

# load features and  activity labels data
features = read.table("./UCI HAR Dataset/features.txt")
activity = read.table("./UCI HAR Dataset/activity_labels.txt")

str(features) ; str(activity)

# use descriptive feature names as var names
feature_names = as.character(features[,2])
head(feature_names)
head(names(fulldata))

colnames(fulldata) = c("subject","labels", feature_names)
head(names(fulldata))

# extract the measurements for mean and standard deviation only
measures = colnames(fulldata)
req_measures = grep(".mean.|.std.",measures)

fulldata2 = cbind("subject" = fulldata$subject, "labels" = fulldata$labels, fulldata[ ,req_measures])

# give activity descriptive names
str(activity)
colnames(activity) = c("labels", "act_name")

fulldata3 = merge(activity, fulldata2 , by="labels", all.x=TRUE)

# rename variable name act_name with activity
fulldata3 = rename(fulldata3, activity = act_name)

# remove "labels" column and re-order remaining columns so that "subject" is first
subject = select(fulldata3, subject)

fulldata3 = select(fulldata3, -c(labels, subject))

tidy_data = cbind("subject"= subject, fulldata3)
head(names(tidy_data))

# save the tidy dataset

write.table(tidy_data, file = ".tidy_data.txt")

# create a second independent tidy dataset with the average of each variable for each activity

# data frame for average by activity
avg_by_activity = aggregate(tidy_data[, 3:81], list(tidy_data$activity), mean)
head(names(avg_by_activity))

# to differentiate variable names for "variable averages by activity" from "variable names in original tidy_data"
# make variable names for avg_by_activity lowercase
colnames(avg_by_activity) = tolower(names(avg_by_activity))

# data frame for average by subject
avg_by_subject = aggregate(tidy_data[, 3:81], list(tidy_data$subject), mean)
head(names(avg_by_subject))

# to differentiate variable names for "variable averages by subject" from "variable names in original tidy_data" 
# and from variable names in "variable averages by activity"
# make variable names for average by subject uppercase
colnames(avg_by_subject) = toupper(names(avg_by_subject))

# Merge the "avg_by_activity" data frame with "avg_by_subject"
# however, the two have no common variable to merge with
# first create a mutation of "tidy_data"

tidy_with_avg = mutate(tidy_data)
# merge "avg_by_activity" to it
tidy_with_avg = merge(tidy_with_avg, avg_by_activity, by.x ="activity", by.y = "group.1")

# merge "avg_by_subject to it
tidy_with_avg = merge(tidy_with_avg, avg_by_subject, by.x = "subject", by.y = "GROUP.1")

write.table(tidy_with_avg, file = "./tidy_with_avg.txt")
