#loading library
library(ggplot2)
library(dplyr)

#Inspecting data set
mpg

#Creating a subset
dataset1 <- select(mpg, manufacturer, model, year)

#OR
dataset2 <- mpg %>% 
  select(manufacturer, model, year)

dataset_one <- select(mpg, drv, cty, trans)

#OR
dataset_one <- mpg %>% 
  select(drv, cty, trans)

#Rename dataset
dataset_one <- mpg %>% 
  rename(transport = trans)

#Combining rename and select under one code
mpg
dataset1 <- mpg %>% 
  select(manufacturer,model,year) 
  dataset_one <-mpg %>% 
    select(drv, cty, trans) %>% 
    rename(transport = trans)
       
