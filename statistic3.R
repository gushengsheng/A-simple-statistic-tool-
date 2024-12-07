library(Deriv)



convert0 <- function(x0,y0,z0,pratical_derivative)
{
expr <- gsub("x",x0,pratical_derivative)
expr <- gsub("y",y0,expr)
expr <- gsub("z",z0,expr)
result <- eval(parse(text = expr))
return(result)
}



derivative0 <- function(data)
{
print("input your function，表达式千万要带上*号不要漏了")
func <- as.character(readline())
pratical_derivativex <- Deriv(func,"x")
pratical_derivativey <- Deriv(func,"y")
pratical_derivativez <- Deriv(func,"z")
print(pratical_derivativex)
print(pratical_derivativey)
print(pratical_derivativez)
   x1 <- data$xn
   y1 <- data$yn
   z1 <- data$zn
conc <- convert0(x1[1],y1[1],z1[1],func)
x2 <- convert0(x1[1],y1[1],z1[1],pratical_derivativex)
print(x2)
y2 <- convert0(x1[1],y1[1],z1[1],pratical_derivativey)
print(y2)
z2 <- convert0(x1[1],y1[1],z1[1],pratical_derivativez)
print(z2)
u0 <- sqrt(x2*x1[2]*x2*x1[2]+y2*y1[2]*y2*y1[2]+z2*z1[2]*z2*z1[2])
print("近真值是")
print(conc)
print("不确定度的传递值是")
print(u0)
}

