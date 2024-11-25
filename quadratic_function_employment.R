tfuncaxb <- function(x,a,b,c){
y = a*x^2+b*x+c
}
x <- 1:10
y=(x-5)^2+rnorm(10,0,1)
print(y)
fit <- nls(y~tfuncaxb(x,a,b,c),start = list(a=1,b=1,c=1))
coef0 <- coef(fit)
summary0 <- summary(fit)
print(summary0)
print(coef0)
x0 <- seq(0,10,0.1)
y_fit <- coef0[1]*x0^2+coef0[2]*x0+coef0[3]
u <- ggplot() +
geom_point(aes(x=x,y=y))+
geom_smooth(aes(x=x0,y=y_fit))

