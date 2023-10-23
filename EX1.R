#Exercise 1
library(ggplot2)
library(dplyr)

mpg


mpg %>% 
  select(manufacturer, class,
         cty, hwy) %>% 
  rename(manf = manufacturer) %>% 
  filter(cty > 25) 
  
mpg %>% 
  group_by(manufacturer, class) %>% 
  summarise(count = n())

mpg %>% 
  group_by(hwy) %>% 
  summarise(mean(hwy))
  
  
 


  

