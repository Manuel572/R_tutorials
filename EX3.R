#Exercise 3
library(ggplot2)
library(dplyr)

library(hflights)
hflights

hflights %>%
  group_by(UniqueCarrier) %>% 
  summarise(num_flights = n(),
            total_distance = sum(Distance),
            elapsed_time = sum(ActualElapsedTime, na.rm = T),
            T_Airtime = sum(AirTime, na.rm = T))