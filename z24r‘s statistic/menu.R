script_path <- normalizePath(dirname(sys.frame(1)$ofile))

# 打印脚本所在目录
print(script_path)

setwd(script_path)



source("statistic1.R")
source("construct_dataframe.R")
source("statistic2.R")
source("statistic3.R")

repeat0 <- function()
{
print("1 for statistic1 2 for statistic 2 3 for statistic 3,enter")
opt <- readline()
if (opt == 1)
{
A=construct_dateframe()
statistic1_z24r(A)
}else if(opt ==2)
{
A=construct_dateframe()
statistic2_z24r(A)
}else if(opt == 3)
{
A=construct_dateframe()
print("构造x列")
xn <- statistic2_z24r(A)
print("构造y列")
yn <- statistic2_z24r(A)
print("构造z列")
zn <- statistic2_z24r(A)
table <- cbind(xn,yn,zn)
table <- as.data.frame(table)
print(table)
derivative0(table)
}else
{
A=construct_dateframe()
names(A) <- c("xn","yn","zn")
derivative0(A)
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
