# basic commands

getwd()
dir()
setwd("C:/Users/belin/Downloads/Work/R/HiDrive/03_ubungsunterlagen/UE1_import")



# example dataset

iris
str(iris)
head(iris, 3)
tail(iris)

# variables

x2 <- iris
value2 <- 27
vector2 <- c("1","2","3")


###############################################

# install libraries

install.packages("readxl")
install.packages("readr")

# import libraries

library("readr")
library("readxl")

###############################################


# csv files

csv <- read_csv("results.csv")
csv2 <- read_csv2("results.csv")

# for excel data

excel_sheets("results.xlsx")
excel <- read_excel("results.xlsx")


# other formats

txt <- read_delim("results.txt", delim = "!")

# For further reference:
# https://r4ds.had.co.nz/data-import.html#:~:text=read_csv()%20reads%20comma%20delimited,in%20files%20with%20any%20delimiter.


###############################################

# check the imported dataframes
View(csv2)

# have a glimpse at the data

str(csv2)
head(csv2)
tail(csv2)

csv2$Gruppe
csv2["Gruppe"]
csv2$new_column_2 <- 1

csv2$new_column <- csv2$new_column_2 + csv2$Punktzahl
str(csv2)

write_csv(csv2, "new_csv.csv")

###############################################

## What would be the next step?

