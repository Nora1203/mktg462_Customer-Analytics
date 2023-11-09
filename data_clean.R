library(tidyverse)
tfa <- read_delim("tfa.csv")
tfa <- na.omit(tfa)                           
tfa


unique(tfa$RegionPrefLevel)
unique(tfa$Ethnicity)
range(tfa$CumulativeGPA)
unique(tfa$ReceivedPellGrants)
unique(tfa$PrimarySubject)
unique(tfa$GradeLevel)

tfa$RequestedRegionalReassignment[tfa$RequestedRegionalReassignment=="N"]<-0
tfa$RequestedRegionalReassignment[tfa$RequestedRegionalReassignment=="Y"]<-1
tfa$Ethnicity[tfa$Ethnicity=="EUROPEAN"]<-1
tfa$Ethnicity[tfa$Ethnicity=="ASIAN"]<-2
tfa$Ethnicity[tfa$Ethnicity=="AFRICAN"]<-3
tfa$Ethnicity[tfa$Ethnicity=="MULTI"]<-4
tfa$Ethnicity[tfa$Ethnicity=="HISPANIC"]<-5
tfa$Ethnicity[tfa$Ethnicity=="OTHER"]<-6
tfa$Ethnicity[tfa$Ethnicity=="NATIVE"]<-7
tfa$ReceivedPellGrants[tfa$ReceivedPellGrants=="No"]<-0
tfa$ReceivedPellGrants[tfa$ReceivedPellGrants=="Yes, I received a partial Pell Grant"]<-1
tfa$ReceivedPellGrants[tfa$ReceivedPellGrants=="Yes, I received the maximum Pell Grant"]<-2
tfa
tfa$PrimarySubject[tfa$PrimarySubject=="ELEMENTARY"]<-1
tfa$PrimarySubject[tfa$PrimarySubject=="MSGENSCIENCE"]<-2
tfa$PrimarySubject[tfa$PrimarySubject=="HISTORY"]<-3
tfa$PrimarySubject[tfa$PrimarySubject=="CHEMISTRY"]<-4
tfa$PrimarySubject[tfa$PrimarySubject=="MSMATH"]<-5
tfa$PrimarySubject[tfa$PrimarySubject=="HSGENSCIENCE"]<-6
tfa$PrimarySubject[tfa$PrimarySubject=="BILINGUAL"]<-7
tfa$PrimarySubject[tfa$PrimarySubject=="HSMATH"]<-8
tfa$PrimarySubject[tfa$PrimarySubject=="GENSCIENCE"]<-9
tfa$PrimarySubject[tfa$PrimarySubject=="SPED"]<-10
tfa$PrimarySubject[tfa$PrimarySubject=="BIOLOGY"]<-11
tfa$PrimarySubject[tfa$PrimarySubject=="ENGLISH"]<-12
tfa$PrimarySubject[tfa$PrimarySubject=="PREK"]<-13
tfa$PrimarySubject[tfa$PrimarySubject=="SPANISH"]<-14
tfa$PrimarySubject[tfa$PrimarySubject=="SOCIALSTUD"]<-15
tfa$PrimarySubject[tfa$PrimarySubject=="ESL"]<-16
tfa$PrimarySubject[tfa$PrimarySubject=="PHYSICS"]<-17
tfa$PrimarySubject[tfa$PrimarySubject=="MATH"]<-18
tfa$PrimarySubject[tfa$PrimarySubject=="MUSIC"]<-19
tfa$PrimarySubject[tfa$PrimarySubject=="FRENCH"]<-20
tfa$PrimarySubject[tfa$PrimarySubject=="ARTS"]<-21
tfa
tfa$GradeLevel[tfa$GradeLevel=="ELEM"]<-1
tfa$GradeLevel[tfa$GradeLevel=="MIDDLE"]<-2
tfa$GradeLevel[tfa$GradeLevel=="HIGH"]<-3
tfa
tfa %>%
  write_csv("tfa_clean.csv")

matriculate <- tfa %>%
  filter(Matriculated == 1)

matriculate
matriculate %>%
  ggplot(aes(CumulativeGPA)) +
  geom_histogram(fill="skyblue", col="black") 

table(matriculate$PrimarySubject)
table(matriculate$Gender)
table(matriculate$Ethnicity)  





