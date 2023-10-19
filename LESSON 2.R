#Loading libraries
library(ggplot2)
library(dplyr)

#Inspecting data sets
mpg


#mutate()

#create new column
mutate(mpg, cty1 = cty * 2)
mpg %>% 
  mutate(cty1 = cty * 2)

#1. Select columns cty and hwy to create a subset data set (avg_dataset).
#2. Create a new variable: average between cty and hwy (avg mile per gallon)

avg_dataset <- mpg %>% 
  select(cty, hwy) %>% 
  mutate(`avg mile per gallon` = (cty + hwy) / 2) %>% 
  arrange(desc(`avg mile per gallon`))

#transmute() and filter()
avg_dataset <- mpg %>% 
  select(cty, hwy) %>% 
  transmute(`avg mile per gallon` = (cty + hwy) / 2) %>% 
  filter(`avg mile per gallon` < 20)


#Slice()
slice(avg_dataset, 11 )
slice(mpg, 11)


#distinct()
Table <- data.frame(
  Var1 = c(1, 2, 1, 2),
  Var2 = c(1, 3, 1, 1)
)

Table
distinct(Table)
unique(Table$Var1)
