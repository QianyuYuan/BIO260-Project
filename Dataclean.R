business<-readRDS("yelp_academic_dataset_business.rds")
checkin<-readRDS("yelp_academic_dataset_checkin.rds")
user<-read.csv("user_simplified.csv")
review<-readRDS("yelp_academic_dataset_review.rds")
tip<-readRDS("yelp_academic_dataset_tip.rds")

library(dplyr)
business_simple<-business%>%
  filter(city%in%c("Pittsburgh","Charlotte", "Urbana","Champaign",
                   "Phoenix", "Las Vegas", "Madison"))%>%
  filter(grepl("Restautrant|Food|Breakfast|Lunch|Dinner",categories))

business_simple%>%group_by(city)%>%summarize(n())
