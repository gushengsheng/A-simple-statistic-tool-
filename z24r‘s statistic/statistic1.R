statistic1_z24r <- function(dataframe)
{
  


if("x" %in% names(dataframe) & "y" %in% names(dataframe))
{
print("格式正确")
   x1 <- dataframe$x
   y1 <- dataframe$y
print(x1)
print(y1)
xlen <- length(x1)
ylen <- length(y1)
average_x <- sum(x1)/xlen
average_y <- sum(y1)/ylen
x2 <- x1-average_x
y2 <- y1-average_y
x3 <- x2*x2
y3 <- y2*y2
multiplication <- x2*y2
r = sum(multiplication)/sqrt(sum(x3)*sum(y3))
b_1 <- sum(multiplication)/sum(x3)
a_1 <- average_y-b_1*average_x
print(paste("r值为",r))
print(paste("b值为",b_1))
print(paste("a值为",a_1))

}
else 
{
print("需包含x，y列")
}



}


