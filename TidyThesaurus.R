# Tidy Thesaurus

# This translates tidyverse functions to relatively equivalent base functions

# FILTER
dplyr::filter(mtcars, cyl == 4)
# is equivalent to:
mtcars[which(mtcars['cyl'] == 4),]
# OR
mtcars[mtcars['cyl'] == 4,]


# SELECT
dplyr::select(mtcars, 1:4)
mtcars[1:4]
subset(mtcars, select = 1:4)
# another case
dplyr::select(mtcars, mpg)
mtcars['mpg']
subset(mtcars, select = mpg)
# another case
dplyr::select(mtcars, -mpg)
mtcars[,!names(mtcars) %in% 'mpg']
subset(mtcars, select = -c(mpg))


# DISTINCT
df <- mtcars[c(2,8)]
dplyr::distinct(df)
unique(df)


# SLICE
dplyr::slice(mtcars, 4:10)
mtcars[4:10,]


# ARRANGE
dplyr::arrange(mtcars, mpg)
mtcars[order(mtcars['mpg']),]
# in descending order
dplyr::arrange(mtcars, desc(mpg))
mtcars[rev(order(mtcars['mpg'])),]


# PULL
dplyr::pull(mtcars, var = 2)
mtcars[[2]]
