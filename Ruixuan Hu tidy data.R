library(tidyverse)
library(foreign)

a <- read_csv("lab2.csv")

gatherdata <- mydata %>%
     gather("base_sport","base_pain","base_qol","first_sport","first_pain","first_qol","second_sport","second_qol","second_pain",key="time-catagory",value="score")

separate(gatherdata, time-catagory, into = c("time","catagory"), sep="")

