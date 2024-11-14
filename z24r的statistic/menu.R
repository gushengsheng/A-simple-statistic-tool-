source("C:\\Users\\30758\\Desktop\\z24r的statistic\\statistic1.R")
source("C:\\Users\\30758\\Desktop\\z24r的statistic\\construct_dataframe.R")
source("C:\\Users\\30758\\Desktop\\z24r的statistic\\statistic2.R")
source("C:\\Users\\30758\\Desktop\\z24r的statistic\\statistic3.R")

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
}else
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
}
