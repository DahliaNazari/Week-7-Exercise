#Week 7 Exercise

#No.1
#Create vectors for each column
names = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
gender = c("Female", "Male", "Female", "Male", "Female")
age=c(22,23,21,24,22)
test_score=c(85,78,92,65,88)
attendance=c(90,85,95,70,88)

# Combine into a data frame
df=data.frame(names,gender,age, test_score, attendance)

# View the data frame
View(df)

#No.2
#Display the Test_Score column using both df['Test_Score'] and df$Test_score
df["test_score"]
df$test_score

#Display the first 3 rows of the data frame
df[1:3]

#Display students who are older than 22
df[df$age>22,]

#Display female students with Test_Score greater than 80
df[df$gender=="Female" & test_score>80,]

#No.3
#Add New Data 
newdf = rbind(df, data.frame(names = "Lina", 
gender="Male",
age=20,
test_score=95,
attendance=92))

#No.4
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)

#Check for missing values (NA) in the data frame
is.na(students_na)

#Replace missing values in Age with the mean age
students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm=TRUE)

#Replace missing values in Test_Score with the median test score
students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm=TRUE)

#Replace missing values in Attendance with 0
students_na$Attendance[is.na(students_na$Attendance)] <-0