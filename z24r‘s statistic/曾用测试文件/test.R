convert0 <- function(x0,y0,z0,pratical_derivative)
{
expr <- gsub("x",x0,pratical_derivative)
expr <- gsub("y",y0,expr)
expr <- gsub("z",z0,expr)
print(expr)

}

A <- convert0(1,2,3,"-(cos(y) * sin(x)/sin(y)^2)")
print(A)