pak::pkg_install("tidyverse")
library(tidyverse)
read.csv("data/annotations_ahb.csv")

#import data
data <- read.csv("data/annotations_ahb.csv")

##stored data in R
data()
penguins

##store in variable
penguins_data <- penguins

#check column name
names(penguins_data)

#1st few row
head(penguins_data)

#last few row
tail(penguins_data)

#row and col of the data
dim(penguins_data)
nrow(penguins_data)


#sampling data
#random
sample(penguins_data)
#random (20)
sample_n(penguins_data,20)
#only 20 percent data out of all data
sample_frac(penguins_data, .20)



####missing values
is.na(penguins_data)
#how many
sum(is.na(penguins_data))
#which column
colSums(is.na(penguins_data))


###duplicates
duplicated(penguins_data)
sum(duplicated(penguins_data))


###data manipulation
#dplyr_function(data,dosomething)
#select column > single column or multiple or 2-5 column 
#column only for rows
select(penguins_data,sex)
select(penguins_data,species,sex)
select(penguins_data,1:4)
select(penguins_data, c(1,3,5))

#filter for  rows
#data based on criteria
#new variable created using <-
body_3000 <-filter(penguins_data, body_mass > 3000)
penguins_data_male_data <-filter(penguins_data, sex=="male")


#create a new column
median(penguins_data$body_mass)
#result showing NA ,means there are some NA values
#we have to trim
median(penguins_data$body_mass, na.rm = T)
#ifelse means condition + new column add with high and low
mutate(penguins_data, status = ifelse(body_mass > 4050, "high", "low"))

#pipe operator xtl+shift+M |> chaining method
selected_column <- select(penguins_data, species ,sex , body_mass)
filter(selected_column, body_mass>4000)

penguins_data |>
  select(species, sex , body_mass) |> 
  filter(body_mass > 4000)

#make a variable

and_data <- penguins_data |>
  select(species, sex , body_mass) |> 
  filter(sex =="male" & body_mass > 4000)

or_data <- penguins_data |>
  select(species, sex , body_mass) |> 
  filter(sex =="male" | body_mass > 4000) 


#data summary
