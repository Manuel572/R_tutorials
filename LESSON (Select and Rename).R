#Loading Libraries
library(ggplot2)
library(dplyr)

#Inspecting a data set
mpg
View(mpg)

## select ()

#Creating a subset data set
subset <- select(mpg,manufacturer,model,class)

#OR
subset1 <- mpg %>% 
  select(., manufacturer, model, class)

#OR
subset2 <- mpg %>% 
  select(manufacturer,model,class)


##rename ()
subset2 <- rename(subset2,
                  man = manufacturer,
                  md = model,
                  cls = class)
#OR 
subset2 <- subset1 %>% 
  rename(man = manufacturer,
         md = model,
         cls = class)
 
 
#Combining select and rename under one code
mpg
datasets <- mpg %>% 
  select(displ, year, cyl) %>% 
  rename(display = displ,
         yr = year,
         cylinder = cyl)