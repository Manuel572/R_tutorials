#Exercise 3
library(ggplot2)
library(dplyr)

library(hflights)
hflights

hflights %>%
  group_by(UniqueCarrier) %>% 
  summarise(num_flights = n())

hflights %>% 
  group_by(UniqueCarrier) %>% 
  summarise(total_distance = sum(Distance))

hflights %>% 
  group_by(UniqueCarrier) %>% 
  summarise(elapsed_time = sum(ActualElapsedTime))

hflights %>% 
  group_by(UniqueCarrier) %>% 
  summarise( T_Airtime = sum(AirTime))



