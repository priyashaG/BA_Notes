install.packages("pacman")

pacman::p_load(tidyverse, rmarkdown, 
               tinytex, ISLR, ISLR2, 
               openintro, opendatatoronto,
               causaldata)
library(dplyr)
library(tidyverse)
library(openintro)
census_data <- openintro::census
head(census_data)
select(census_data, 
       census_year, state_fips_code,
       total_family_income, age, sex,
       total_personal_income)

select(census_data, 
       -race_general, -marital_status)
census_data_selected <- select(census_data,
                               -race_general,-marital_status)

arrange(census_data, 
        state_fips_code)
#doityourself1
smoking_data<-openintro::smoking
head(smoking_data)
select(smoking_data,
       gender, age, smoke)
select(smoking_data,
       -ethnicity, -nationality)
arrange(smoking_data,
        -age)
#doityourself2
rename(smoking_data, 
       education = highest_qualification)
smoking_data <- mutate(smoking_data,
                       total_number_of_cigarettes = amt_weekdays + amt_weekends)
#doityourself3
filter(smoking_data, gender =="Male")
filter(smoking_data, age == 35 & smoke == "No")
filter(smoking_data, marital_status != "Divorced" & nationality != "English")
#doityourself4
library(dplyr)
library(tidyverse)
library(openintro)
smoking_data|>
  select(highest_qualification,amt_weekdays)|>
  rename(hq=highest_qualification,smoke_weekdays=amt_weekdays)|>
  group_by(hq)|>
  summarise(total_cigarettes= sum(smoke_weekdays, na.rm=T))
smoking_data|>
  filter(age<30)|>
  arrange(-age)
smoking_data|>
  select(gross_income, amt_weekends)|>
  group_by(gross_income)|>
  summarise(total_cig= sum(amt_weekends, na.rm=T))
smoking_data|>
  group_by(gender)|>
  summarise(average=mean(age))
#doityourself5
smoking_data|>
  mutate(
    age_category = case_when(
      age>=15 &
        age<= 25 ~ "group1",
      age>= 26 &
        age<= 40 ~ "group2",
      age>= 41 &
        age< 59 ~ "group3",
      age>= 59 ~ "group4")
  )
smoking_data|>
  mutate(
    gender_name = case_when(
      gender = Female ~ "1",
      gender = Male ~ "0"
    )
  )
