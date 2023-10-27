#clearing wrk space
rm(list = ls())
graphics.off()

#load libraries
library(dplyr)
library(readr)

#Example 1
df <- read_csv('c1,c2,c3
         1,a,T
         2,b,T
         3,c,F',show_col_types = F)

#Ex 2
read_csv(' First meter line
         Second meter line
         c1,c2,c3
         1,a,T
         2,b,T
         3,c,F', skip = 2)

#EX 3
read_csv('c1,c2,c3 #comment 1
         1,a,T #comment 2
         2,b,T
         3,c,F', comment  = '#')

#Reading log
log <- read_log('example.log')

#Reading tsv
read_tsv('mpg.tsv')


#reading delim file
read_delim('mpg_delim.txt', delim = "~")


read_delim("mpg.txt",
           comment = '#',
           col_names = T,
          skip_empty_rows = T,
          delim = ' ',
          quote = "\"")
