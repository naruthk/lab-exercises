## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# This is because my_num has a value of 6 (of type Integer), but initials is a String.
# Therefore, vector_sum is unable to add the two values together.

#install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# We did install the library, but we have call the library to use it yet.
# We need library(stringr)

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# The variable "initial" isn't defined. It's a typo.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector_part2 = c(my_num, initials)
typeof(vector_part2)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  return( paste("The difference in lengths is", nchar(vector1) - nchar(vector2)))
}


# Pass two vectors of different length to your `CompareLength` function
CompareLength(my_vector, vector_part2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  length = nchar(vector1) - nchar(vector2)
  output_string <- if ( (length > 1) (paste("Your first vector is longer by", length))) else
    ( paste("Your second vector is longer by", nchar(vector2) - nchar(vector1)))
  return(output_string)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(my_vector, vector_part2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3) {
  return(c(vector1, vector2, vector3))
}

# Send 3 vectors to your function to test it.
vector_part3 = c(4, 6)
CombineVectors(my_vector, vector_part2, vector_part3)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(course_name) {
  return(stringr::str_to_lower(course_name))
}
