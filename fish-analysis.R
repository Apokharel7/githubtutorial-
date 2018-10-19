#library tidyverse
#load data from data folder
#create a new column in data
#create a new column in data called length_cat length >200 its big otherwise small
#commit with message
#push

library(tidyverse)
#source("R/themes.R) to load our theme automatically 
.libPaths("/Users/anisha/Documents/Lectures/Data_mgmt&Viz/RLibrary/githubtutorial")

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) ->fishData
head(fishData)