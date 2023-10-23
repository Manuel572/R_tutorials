#Exercise 1
library(ggplot2)
library(dplyr)

mpg


mpg %>% 
  select(manufacturer, class,
         cty, hwy) %>% 
  rename(manf = manufacturer) %>% 
  filter(cty > 25)  %>% 
  group_by(manf, class) %>% 
  summarise(count = n(),
          average_hwy  = mean(hwy))

  
 


  

