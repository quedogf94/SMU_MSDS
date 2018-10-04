rm(list = ls())
dev.off()  #clears plots
setwd("/SMU/MSDS_6306_Doing_Data_Science/Week3/Project")
rio <- read.csv(file.choose(), header=TRUE)
rio2 <- read.table(file.choose(),header = T,sep = ","); # This reads it in if you directory is set to the right folder.
head(rio2)
head(rio, n=10)
View(rio) #View dataset as Excel File in R.
attach(rio) #Allows me to use the dataset to manipulate
names(rio) #List the Headers in the Dataset
str(rio) #Class of objects in dataset
summary(bedrooms)
library(sqldf)
sqldf("Select id, price,bedrooms, listing_url from rio where bedrooms > 20")
sqldf("select count(*) from rio")
sqldf("select count(DISTINCT id) from rio")
sqldf("select count() from rio where number_of_reviews > 150")
sqldf("select id, listing_url, host_neighbourhood, number_of_reviews from rio where number_of_reviews > 150 order by number_of_reviews desc")
hist(rio$number_of_reviews)
qqplot(number_of_reviews,price)


