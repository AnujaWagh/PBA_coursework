#install.packages("tidyverse")
library(tidyverse)

list.files(path = "/datasets/")

# library packages
library(dplyr)
library(lattice)
library(ggplot2)
library(GGally)
library(readr)
library(car)
library(MASS)
library(caret)

# importing csv files
audi <- read_csv("./datasets/audi.csv", show_col_types = FALSE)
bmw <- read_csv("./datasets/bmw.csv",show_col_types = FALSE)
ford <- read_csv("./datasets/ford.csv", show_col_types = FALSE)
hyundi <- read_csv("./datasets/hyundi.csv", show_col_types = FALSE)
merc <- read_csv("./datasets/merc.csv",show_col_types = FALSE)
skoda <- read_csv("./datasets/skoda.csv",show_col_types = FALSE)
toyota <- read_csv("./datasets/toyota.csv",show_col_types = FALSE)
vauxhall <- read_csv("./datasets/vauxhall.csv",show_col_types = FALSE)
vw <- read_csv("./datasets/vw.csv",show_col_types = FALSE)


df <- bind_rows(list(audi, bmw, ford, hyundi, merc, skoda, toyota, vauxhall, vw), .id="id")
summary(df)

# data preparing 
# assign the brand name to the combined dataframe

df <- df %>% mutate( brand = case_when(
  id == 1 ~ "audi", 
  id == 2 ~ "bmw", 
  id == 3 ~ "ford",
  id == 4 ~ "hyundi",
  id == 5 ~ "merc",
  id == 6 ~ "skoda",
  id == 7 ~ "toyota",
  id == 8 ~ "vauxhall",
  id == 9 ~ "vw"))
