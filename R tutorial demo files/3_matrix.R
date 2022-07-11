matrix(1:6, nrow = 2)
matrix(1:6, ncol = 2)

matrix(1:6, nrow = 2, byrow = TRUE)
matrix(1:3, nrow = 2, ncol = 3)

cbind(1:3, 1:3)
rbind(1:3, 1:3)

n <- matrix(1:6, byrow =  TRUE, nrow = 2)
n
rbind(n, 7:9)
cbind(n, c(10, 11))

rownames(n) <- c('row1', 'row2')
n

colnames(n) <- c('col1', 'col2', 'col3')
n

n <- matrix(1:6, byrow =  TRUE, nrow = 2)
dimnames(n) = list( c('row1', 'row2'), c('col1', 'col2', 'col3'))
dimnames


x <- matrix(1:8, ncol = 2)
x
l <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
l

cbind(x, l)

















