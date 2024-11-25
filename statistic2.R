statistic2_z24r <- function(data)
{
   print("the name of colunm")
   x <- readline()
   x1 <- data[[x]]
   average_x <- sum(x1)/length(x1)
   x3 <- x1-average_x
   n <- length(x1)
   x2 <- x3*x3
   q <- sum(x2)/(n*(n-1))
   A_uncertainty <- sqrt(q)
   print("b_uncertainty equals to")
   B <- as.numeric(readline())
   combine_uncertainty <- sqrt(A_uncertainty^2+B^2)
   print("A_uncertainty is:")
   print(A_uncertainty)
   print("B_uncertainty is:")
   print(B)
   print("C_uncertainty is:")
   print(combine_uncertainty)
   print("average_x is:")
   print(average_x)
   print("standard formula is")
   print(paste(average_x,"+-",combine_uncertainty))
   array1 <- c(average_x,combine_uncertainty)
   return(array1)
}

   