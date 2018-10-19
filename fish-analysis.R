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

# histogram of scale length, fill is by length_cat
#facetwrap length_cat w/themes 
#invite Chris to the respository (in the settings there is collaborator to invite hom

source("R/Theme.R")

fishData %>% 
ggplot() +
  geom_histogram(aes(x= scalelength, fill = length_cat)) +
  facet_wrap(~length_cat) +
  theme_presentation()
