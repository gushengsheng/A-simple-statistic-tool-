
construct_dateframe <- function()
{
print("列数")
num_cols <- as.integer(readline())
print("行数")
num_rows <- as.integer(readline())
col_names <- list()
vector1 <- rep(NA,num_rows)
data1 <- data.frame(col1 = vector1)

for (i in 1:num_cols)
{
print(paste("输入第",i,"列的名称："))
col_name <- readline()
col_names <- c(col_names,col_name)

print(paste("输入",col_name,"的列数据，空格分隔"))
col_value <- as.numeric(unlist(strsplit(readline()," ")))
data1 <- cbind(data1,col_value)
}

data1 <- subset(data1,select = -col1)
names(data1) <- col_names
print(data1)
return(data1)
}