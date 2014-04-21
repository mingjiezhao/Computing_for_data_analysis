agecount <- function(age = NULL) {
## Check that "age" is non-NULL; else throw error
## Read "homicides.txt" data file
## Extract ages of victims; ignore records where no age is
## given
## Return integer containing count of homicides for that age
str.1 = " years old"
  str.2 = paste0(" ",age, str.1)
  print(str.2)

  result = length(grep(str.2, homicides, ignore.case = TRUE))
  return (result)

}

agecount(3)

num <- agecount(21)
print(num)
