library(ggplot2)
library(dplyr)

mpg

mpg %>% 
  select(manufacturer, model, year, hwy) %>% 
  filter( year == 2008) %>% 
  group_by(manufacturer) %>% 
  summarise(mean_hwy = mean(hwy)) %>% 
  filter(mean_hwy == max(mean_hwy))
  
  

  
