library(dplyr)
library(tidyr)
library(hflights)
library(ggplot2)

hflights

 hflights %>% 
  group_by(UniqueCarrier, Month) %>% 
  #count()
  summarise(total_flights = n()) %>% 
  mutate(max_total_flights = max(total_flights)) %>% 
  mutate(normalized_total = total_flights / max_total_flights) %>% 
  select( UniqueCarrier, Month, normalized_total) %>% 
  pivot_wider(names_from = Month, values_from = normalized_total,
              values_fill = 0)
