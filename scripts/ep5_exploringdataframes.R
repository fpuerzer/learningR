# Exploring Data Frames
# Author: Frankie Puerzer
# April 12, 2019
# UCSB

#explore gapminder data set



#READ in gapminder.csv
gapminder <- read.csv("data/gapminder_data.csv")

# visually inspect imported data set
# click on gapminder

#Structure of gapminder

str(gapminder)

#SUMMARY
#factor columns summarized by number of items per level
#numeric of integer columsn are summarized descriptive stats (quartiles/means)
#character columns summarized by length/class/mode
summary(gapminder)
min(gapminder$year)
max(gapminder$year)
#summary of gapminder, by country column
summary(gapminder$country)

#object type
#what is the object type in the year column?
typeof(gapminder$year)

#what is the objust type iin the country column"
typeof(gapminder$country)

#length (# of columns)
length(gapminder)

#type of entire gapminder data set
#list of 6 columns
typeof(gapminder)

#number of rows
nrow(gapminder)

#number of colummns
ncol(gapminder)

#dimensions
dim(gapminder)

#column names or titles
colnames(gapminder)

#previewing our dataset
#HEAD (remember from BASH??)
#preview first few lines
head(gapminder, n=15)



#preview last few lines
tail(gapminder, n=12)


#preview lines in the middle
#empty after comma - gives all of the columns for the rows specified
gapminder[850:870, ]







#save R script