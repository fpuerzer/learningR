# Learning R
# Friday April 12, 2019

# Initialize a cats data.frame
cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0,3.2), 
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline.csv")

# an intentional error
cats$weight + cats$coat

#what type of variable?
typeof(cats$weight)
typeof(cats$coat)

class(cats)

#let's talk about vectors
#logicals

my_vector <- vector(length = 3)
my_vector

# another vector: character
another_vector <- vector(mode= "character", length = 3)
another_vector

# another exploratory command
str(another_vector)
str(cats$coat)
str(cats$weight)
str(cats$likes_string)


# make a new vector
combine_vector <- c(2,6,3)
combine_vector

coercion_vector <- c('a', TRUE)
coercion_vector
str(coercion_vector)

# forcing example
character_vector_example <- c('0','2','4')
character_vector_example

character_coerced_to_numeric <- as.numeric(character_vector_example)
character_coerced_to_numeric

# useful coercion
cats$likes_string 
typeof(cats$likes_string)
cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string

# appending
ab_vector <- c('a', 'b')
combine_example <- c(ab_vector, 'SWC')
combine_example

# populate quickly 
mySeries <- 1:10
mySeries

str(cats$weight)
str(cats$coat)
coats <- c('tabby', 'tortoisshell', 'tortoissell', 'black','tabby')
str(coats)
CATegories <- factor(coats)
str(CATegories)

# age of cats
age <- c(2,3,5)
cats
cbind(cats, age)
cats

# adding a row
nrow(cats)
newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats,newRow)
cats
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')
levels(cats$coat)

# removing a row
cats <- na.omit(cats)
cats
