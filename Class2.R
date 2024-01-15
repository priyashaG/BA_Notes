#doityourself1
install.packages("pacman")

pacman::p_load(tidyverse, rmarkdown, 
               tinytex, ISLR, ISLR2, 
               openintro, opendatatoronto,
               causaldata)
library(dplyr)
library(tidyverse)
library(openintro)
library(ggplot2)
ggplot(data = yrbss_samp)+
  geom_histogram(
    aes(x = height),
    fill = "hotpink"
  )
ggplot(data =yrbss_samp)+
  geom_density(
    aes(x = height)
         )
ggplot(data = yrbss_samp)+
  geom_density(
    aes(x = age)
  )
#doityourself2
ggplot(data = yrbss_samp)+
  geom_bar(
    aes(x = gender),
    fill = "brown"
  )
ggplot(data = yrbss_samp|>
         filter(!is.na(hispanic)))+
  geom_bar(
    aes(x = hispanic),
    fill = "lightblue"
  )
