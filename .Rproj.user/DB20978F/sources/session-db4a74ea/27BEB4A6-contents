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