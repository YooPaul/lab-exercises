## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work:
# The vector contains data of different types.
# Cannot add together numeric and character datas

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work:
# This block of code only installed the package but did not
# load the package to the currently running R session.
# So the function str_length is still unknown to the R environment.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work:
# There are no such variables called initial.
# Only the variable initials exists.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
int.vector <- c(1,2,3,4)
typeof(int.vector) # Outputs "double" as the type

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1,v2){
  diff = abs(length(v1) - length(v2))
  result = paste("The difference in lengths is",diff)

  return(result)
}

# Pass two vectors of different length to your `CompareLength` function
v1 = c(1,2,3)
v2 = c(1,2,3,4)
CompareLength(v1,v2)
# "The difference in lengths is 1"


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1,v2){
  diff = length(v1) - length(v2)
  if (diff > 0){
    return(paste("Your first vector is longer by", abs(N) ,"elements"))
  }else{
    return(paste("Your second vector is longer by", abs(N),"elements"))
  }

}

# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
