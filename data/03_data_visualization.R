##install
pak::pkg_install(c("ggthemes","ggsci","hrbrthemes","ggplot2"))

##load the package
library(ggplot2)
library(ggthemes)
library(tidyverse)
library(ggsci)
library(hrbrthemes)
read.csv("data/annotations_ahb.csv")

#import data
data <- read.csv("data/annotations_ahb.csv")

#go to https://www.data-to-viz.com/#explore

##stored data in R
data()
penguins
penguins_data <- penguins

##data visualization
ggplot(data, aes(x= , y= )) + 
  geom_type()

#histogram

basic <-ggplot(penguins_data, aes(x = body_mass)) + 
  geom_histogram() +
  labs(
    x = "Body Mass",
    y = "Disctribution of body mass",
    subtitle = "A subtitle",
    caption = "data source: R "
  )
exists("basic")
#run 
# theme
basic + theme_economist()
basic + theme_bw()
basic + theme_ipsum_ps()

#density
ggplot(penguins_data, aes(body_mass)) +
  geom_density()

#box plot to identify outlier

ggplot(penguins_data, aes(x= sex, y= body_mass)) + 
  geom_boxplot()

##use pipe operator
penguins_data |> 
  filter(sex != "NA") |> 
  ggplot(aes(sex), fill) +
  geom_bar()




