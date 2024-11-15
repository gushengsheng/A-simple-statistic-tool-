script_path <- normalizePath(dirname(sys.frame(1)$ofile))# 打印脚本所在目录
print(script_path)
setwd(script_path)

library(ggplot2)

source("construct_dataframe.R")

repeat0 <- function()
{
print("1，2,3,4 for plot 1，2，3,4 respectively,enter")
opt <- readline()
if (opt == 1)
{
A=construct_dateframe2()
graphic0 <- ggplot(A,aes(x=x,y=y)) +
geom_point()
print(graphic0)
}else{

A=construct_dateframe2()
graphic0 <- ggplot(A,aes(x=x,y=y)) +
geom_point() +
geom_smooth(metho = "lm",se = FALSE)
print(graphic0)
}
print("want try again?YES or NOT") #repeat operation
m <- as.character(readline())
if(m == "YES"){
repeat0()
}else{
q()
}
}
repeat0()
